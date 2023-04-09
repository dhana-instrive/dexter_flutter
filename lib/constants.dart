import 'package:dexider/utils/constants.dart';

const patternJson = {
  "name": "App Name",
  "colors": {
    "primary": genPrimaryColor,
    "secondary": genSecondaryColor,
    "tertiary": genTertiaryColor
  },
  "style": "classic",
  "sections": [
    {
      "order_id": 1,
      "name": "nav_bar",
      "value": {
        "name": navBarName,
        "logo": navBarLogo,
        "actions": navBarActions
      }
    },
    {
      "order_id": 2,
      "name": "banner",
      "value": {
        "title": bannerTitle,
        "desc": bannerDesc,
        "bgImage": bannerBgImage,
        "btnTxt": bannerButtontxt
      }
    },
    {
      "order_id": 3,
      "name": "about",
      "value": {
        "image": aboutImage,
        "title": aboutTitle,
        "text": aboutTxt,
        "direction": ""
      }
    },
    {
      "order_id": 4,
      "name": "testimonial",
      "value": testimonial
    },
    {
      "order_id": 5,
      "name": "footer",
      "value": {
          "copyright": footerCopyright,
          "link1": footerLink1,
          "link2": footerLink2,
        }
    }
  ]
};