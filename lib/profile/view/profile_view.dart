import 'package:cubicode/app/app.dart';
import 'package:cubicode/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Profile();
  }

  @override
  bool get wantKeepAlive => true;
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    final photoURL = user.photo;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.profileLabel),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.grey[900],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage:
                      photoURL != null ? NetworkImage(photoURL) : null,
                  child: photoURL == null
                      ? const Icon(Icons.person_outline, size: 32)
                      : null,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const EmailAddress(),
                      if (user.badge ?? false)
                        const Icon(Icons.military_tech, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ProfilePhoto(),
          const Spacer(),
          // Spacer(),
          const LogOutButton(),
          const Spacer(),
        ],
      ),
    );
  }
}

class DisplayName extends StatelessWidget {
  const DisplayName({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    final displayName = user.name;

    return Text(
      displayName?.isNotEmpty ?? false
          ? displayName!
          : context.loc.guestProfileDisplayName,
    );
  }
}

class EmailAddress extends StatelessWidget {
  const EmailAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    final email = user.email;

    return Text(email ?? '', style: Theme.of(context).textTheme.headlineSmall);
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: const EdgeInsets.all(10),
    );

    return OverflowBar(
      alignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () =>
              context.read<AppBloc>().add(const AppLogoutRequested()),
          style: style,
          child: Text(context.loc.logOutButtonLabel),
        ),
      ],
    );
  }
}
