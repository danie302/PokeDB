part of 'index.dart';

class _Form extends StatelessWidget {
  const _Form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(child: Container()),
        Container(
          width: size.width,
          decoration: styles.authContainer,
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text('PokeDB', style: styles.title),
              SizedBox(
                width: size.width * 0.8,
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.name,
                        onChanged: (value) => {},
                        decoration: styles.inputs.copyWith(
                          hintText: 'guestUser',
                          labelText: 'Username',
                        ),
                        validator: (value) {
                          return value!.length > 5
                              ? null
                              : 'Username must be at least 5 characters';
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => {},
                        decoration: styles.inputs.copyWith(
                          hintText: 'pokeuser@email.com',
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          String pattern =
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regExp = RegExp(pattern);

                          return value!.contains(regExp)
                              ? null
                              : 'Invalid email';
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        autocorrect: false,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (value) => {},
                        decoration: styles.inputs.copyWith(
                          hintText: '*******',
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          return value!.length > 6
                              ? null
                              : 'Minimum 6 characters';
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        autocorrect: false,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (value) => {},
                        decoration: styles.inputs.copyWith(
                          hintText: '*******',
                          labelText: 'Confirm Password',
                        ),
                        validator: (value) {
                          return value!.length > 6
                              ? null
                              : 'Minimum 6 characters';
                        },
                      ),
                      const SizedBox(height: 20),
                      const Button(
                        text: 'Sign Up',
                        minWidth: 180,
                        height: 45,
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: AppTheme.secondary,
                        ),
                        onPressed: () => locator<NavigationService>()
                            .navigateTo(LoginScreen.routeName),
                        child: const Text(
                          'Already Signed Up? Login',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
