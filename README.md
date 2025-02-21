# GitSense

A neat little app to show off some of your github stats so you can brag to your friends.

## Building

The only non-standard thing you need to do is copy a [Github Personal Acess Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) into the environment file and building should be cool. You should also remove the '.example' suffix.

## TODO

- [ ] Actually log into Github instead of copying a token in
- [ ] Make the UI actually attractive
- [ ] Tweak around with the colors and default button theme
- [ ] Create a page for issues solved
- [ ] Create a page for PR's raised/reviewed/whatever
- [x] Use graphql_codgen to generate type safe request
- [x] Have a page to show off your top repositories
- [x] Use flutter_graphql to make requests