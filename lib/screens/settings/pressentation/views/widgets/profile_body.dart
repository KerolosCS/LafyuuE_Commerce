import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/core/cache/cache_helper.dart';
import 'package:lafuu_e_commerce/core/utils/app_router.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_btn.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/appCubit/home_cubit.dart';
import 'package:shimmer/shimmer.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  @override
  void initState() {
    HomeCubit.get(context)
        .getProfile(CacheHelper.getString(key: 'TOKEN') ?? "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is ProfileSuccess) {
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: Column(
                    children: [
                      const ProfileAppBar(),
                      const Divider(height: 2),
                      const SizedBox(height: 24),
                      PhotoAndTitle(
                          name: HomeCubit.get(context).personModel?.data?.name),
                      const SizedBox(height: 32),
                      DataOfProfileWidget(
                        iconLeading: Icons.person_outline,
                        txt: 'Name',
                        val: HomeCubit.get(context).personModel?.data?.name,
                      ),
                      DataOfProfileWidget(
                          iconLeading: Icons.email_outlined,
                          txt: 'Email',
                          val: HomeCubit.get(context).personModel?.data?.email),
                      DataOfProfileWidget(
                          iconLeading: Icons.phone_android_sharp,
                          txt: 'Phone',
                          val: HomeCubit.get(context).personModel?.data?.phone),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: CustomBtn(
                          onPress: () {
                            CacheHelper.clearCachedValue(key: 'TOKEN');
                            GoRouter.of(context)
                                .pushReplacement(AppRouter.kLogScreen);
                          },
                          child: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                // height: 100.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: kPrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32)),
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Loading Profile',
                          style: Styles.textStyle30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class DataOfProfileWidget extends StatelessWidget {
  const DataOfProfileWidget({
    super.key,
    this.iconLeading,
    this.txt,
    this.val,
  });
  final IconData? iconLeading;
  final String? txt;
  final String? val;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                iconLeading ?? Icons.male_outlined,
                size: 30,
                color: kPrimaryColor,
              ),
              const SizedBox(width: 16),
              Text(txt ?? 'Gender',
                  style:
                      Styles.textStyle12.copyWith(fontWeight: FontWeight.w700)),
              const Spacer(),
              Text(
                val ?? 'Male',
                style: Styles.textStyle12.copyWith(color: Colors.grey),
              ),
              const SizedBox(width: 16),
              IconButton(
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
                onPressed: () {},
                color: Colors.grey,
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}

class PhotoAndTitle extends StatelessWidget {
  const PhotoAndTitle({
    super.key,
    this.name,
  });
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage('assets/images/logo2.png'),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? 'Kerolos Fady',
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 4),
              Text(
                '@derlaxy',
                style: Styles.textStyle12.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      child: Row(
        children: [
          IconButton(
            color: Colors.grey,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          const SizedBox(width: 16),
          const Text(
            'Profile',
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}
