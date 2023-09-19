import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/presentation/widgets/button.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:lecturer/application/profile/profile_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/domain/core/util/util.dart';
import 'package:lecturer/domain/core/util/validator.dart';
import 'package:lecturer/presentation/widgets/avatar.widget.dart';
import 'package:lecturer/presentation/widgets/text_form_field.widget.dart';
import 'package:csv/csv.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  ProfilePage({Key? key}) : super(key: key);

  final _formKey = getIt<GlobalKey<FormState>>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => unfocus(context),
          child: Scaffold(
            appBar: AppBar(
              title: Text(context.tabsRouter.current.meta["title"]),
              actions: [
                IconButton(
                  onPressed: () => context
                      .read<ProfileBloc>()
                      .add(const ProfileEvent.editingToggled()),
                  icon: Icon(
                    state.isEditing
                        ? LineAwesomeIcons.times
                        : LineAwesomeIcons.alternate_pencil,
                  ),
                ),
                if (state.isEditing)
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(LineAwesomeIcons.save),
                  ),
                const SizedBox(width: 16),
              ],
            ),
            body: ListView(
              // physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              children: [
                Center(
                  child: AvatarWidget(
                    url: getIt<ParseUser>().get("photoUrl"),
                    size: 200,
                    stroke: 4,
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    "${getIt<ParseUser>().get("firstname")} ${getIt<ParseUser>().get("lastname")}",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      getIt<ParseUser>().username!,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await Clipboard.setData(
                            ClipboardData(text: getIt<ParseUser>().username!));
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content:
                              Text("Staff ID copied to clipboard successfully"),
                        ));
                      },
                      icon: const Icon(LineAwesomeIcons.copy),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                Form(
                  key: _formKey,
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      Text(
                        "Bio",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      const SizedBox(height: 16),
                      TextFormFieldWidget(
                        text: getIt<ParseUser>().get("gender") == "M"
                            ? "Male"
                            : "Female",
                        validator:
                            getIt<Validator>().validateEmail, // TODO: change
                        onChanged: (text) {},
                        label: "Gender",
                        hint: "Are you male or female?",
                        enabled: false,
                        suffixIcon: Icon(
                          getIt<ParseUser>().get("gender") == "M"
                              ? LineAwesomeIcons.male
                              : LineAwesomeIcons.female,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormFieldWidget(
                        text: Moment(getIt<ParseUser>().get("dob"))
                            .formatDateShort(),
                        validator: getIt<Validator>().validateEmail,
                        onChanged: (text) {},
                        label: "Date of birth",
                        hint: "What is your date of birth?",
                        enabled: false,
                        suffixIcon: const Icon(LineAwesomeIcons.calendar),
                      ),
                      const SizedBox(height: 16),
                      TextFormFieldWidget(
                        text: getIt<ParseUser>().get("country"),
                        validator: getIt<Validator>().validateEmail,
                        onChanged: (text) {},
                        label: "Country",
                        hint: "What country are you from?",
                        enabled: false,
                        suffixIcon: const Icon(LineAwesomeIcons.globe),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Contact",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      const SizedBox(height: 16),
                      TextFormFieldWidget(
                        text: getIt<ParseUser>().emailAddress!,
                        validator: getIt<Validator>().validateEmail,
                        onChanged: (text) {},
                        label: "Email Address",
                        hint: "What is your email address?",
                        enabled: false,
                        suffixIcon: const Icon(LineAwesomeIcons.at),
                      ),
                      const SizedBox(height: 16),
                      TextFormFieldWidget(
                        text: getIt<ParseUser>().get("phone"),
                        validator:
                            getIt<Validator>().validateEmail, // TODO: change
                        onChanged: (text) {},
                        label: "Pho'ne Number",
                        hint: "What is your phone number?",
                        enabled: false,
                        suffixIcon: const Icon(LineAwesomeIcons.phone),
                      ),
                      const SizedBox(height: 16),
                      TextFormFieldWidget(
                        text: getIt<ParseUser>().get("whatsapp"),
                        validator:
                            getIt<Validator>().validateEmail, // TODO: change
                        onChanged: (text) {},
                        label: "WhatsApp Number",
                        hint: "What is your WhatsApp number?",
                        enabled: false,
                        suffixIcon: const Icon(LineAwesomeIcons.what_s_app),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  label: "Register Class",
                  onTap: () async {
                    var classes = ["2025B", "2025C", "2027A"];
                    for (var c in classes) {
                      final _rawData =
                          await rootBundle.loadString("assets/$c.csv");
                      List<List<dynamic>> list =
                          const CsvToListConverter().convert(_rawData);
                      for (var row in list) {
                        ParseUser user = ParseUser.createUser(
                          row[1].toString().trim(),
                          "${row[1].toString().trim()}123",
                          row[7].trim(),
                        );
                        user.set("firstname", row[2].trim());
                        user.set("lastname", row[4].trim());
                        if (row[3].isNotEmpty) {
                          user.set("middleName", row[3].trim());
                        }
                        user.set("phone", row[5].toString().trim());
                        user.set("whatsapp", row[6].toString().trim());
                        user.set("isStaff", false);
                        user.set("isStudent", true);
                        await user.signUp();
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>(),
      child: this,
    );
  }
}
