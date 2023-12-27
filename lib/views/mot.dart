import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meet Our Team',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          TeamMemberCard(
            name: 'Nur Ali Arfan',
            imageUrl: 'https://avatars.githubusercontent.com/u/116624296?v=4',
            numbers: '3337210033',
            words:
                'Project Leader, Web & Mobile Fullstack Developer, Cloud Developer',
            facebookLink: 'https://tiktok.com/arfanhorizon',
            instagramLink: 'https://www.instagram.com/arfannurali_',
            emailLink: 'mailto:nuraliarfan13@gmail.com',
            whatsappLink: 'https://wa.me/+628990971247',
          ),
          TeamMemberCard(
            name: 'ibrahim',
            imageUrl:
                'https://raw.githubusercontent.com/ibrahimfe/cv_with_php/main/assets/self_portraid.jpg',
            numbers: '3337220054',
            words:
                'Web & Mobile Fullstack Developer, Database and API Developer',
            facebookLink: 'https://www.facebook.com/',
            instagramLink: 'https://www.instagram.com/baim.38',
            emailLink: 'mailto:ibrahiimm.f@gmail.com',
            whatsappLink: 'https://wa.me/6281213369280',
          ),
          TeamMemberCard(
            name: 'Fatwaraga Rafsanjani',
            imageUrl:
                'https://i.ibb.co/C2bhvNg/Snapinsta-app-127043287-129275272062709-8406110938990227754-n-1080.jpg',
            numbers: '3337210031',
            words: 'Mobile Front-End Developer',
            facebookLink:
                'https://www.facebook.com/profile.php?id=100017486203034',
            instagramLink: 'https://www.instagram.com/ga.ra.ga/',
            emailLink: 'mailto:fatwaraga2@gmail.com',
            whatsappLink: 'https://wa.me/628990971247',
          ),
          TeamMemberCard(
            name: 'Farrah Safira',
            imageUrl:
                'https://i.ibb.co/yF8fwPj/2779ea4e-3c15-4deb-86d7-fbbad54258db.jpg',
            numbers: '3337220079',
            words: 'Web Front-End Developer, Technical Writer',
            facebookLink: 'https://www.tiktok.com/',
            instagramLink:
                'https://www.instagram.com/farrahsc_?igsh=MXNsMWJmbXl3MHFncg',
            emailLink: 'mailto:Farrah.safira99@gmail.com',
            whatsappLink: 'https://wa.me/+6281296843674',
          ),
          TeamMemberCard(
            name: 'Nasywa Putri Khairunnisaa',
            imageUrl: 'https://i.ibb.co/tZCSq8p/foto-nasywa.jpg',
            numbers: '3337220044',
            words: 'Web UI/UX Designer, Web Front-End Developer',
            facebookLink: 'https://www.facebook.com/',
            instagramLink:
                'https://www.instagram.com/nsywptr.k?igsh=NmR3NnRkNm50MGp5',
            emailLink: 'mailto:nasywaputri1103@gmail.com',
            whatsappLink: 'https://wa.me/6281283112973',
          ),
          TeamMemberCard(
            name: 'Hanny Destian Marzuliyanti',
            imageUrl: 'https://i.ibb.co/mFx9sTb/foto-hanny.jpg',
            numbers: '3337220057',
            words: 'Web Back-End Developer',
            facebookLink: 'https://www.facebook.com/',
            instagramLink:
                'https://www.instagram.com/anonahann?igsh=OGQ5ZDc2ODk2ZA',
            emailLink: 'mailto:destianmarzuliyanti@gmail.com',
            whatsappLink: 'https://wa.me/6285695428612',
          ),
          TeamMemberCard(
            name: 'Salsabila Firdausiah Ramadani',
            imageUrl: 'https://i.ibb.co/K0Q9z41/IMG-20231213-014034.png',
            numbers: '3337220017',
            words: 'Web Back-End Developer',
            facebookLink: 'https://www.facebook.com/',
            instagramLink:
                'https://www.instagram.com/xafier_30?igsh=ODA1NTc5OTg5Nw',
            emailLink: 'mailto:firdausiah1610@gmail.com',
            whatsappLink: 'https://wa.me/6281211138540',
          ),
          TeamMemberCard(
            name: 'julkifli',
            imageUrl: 'https://i.ibb.co/y85z0Ns/ok-1.jpg',
            numbers: '3337210026',
            words: 'Mobile Front-End Developer',
            facebookLink: 'https://www.facebook.com/',
            instagramLink: 'https://www.instagram.com/julkifli_26',
            emailLink: 'mailto:3337210026@untirta.ac.id',
            whatsappLink: 'https://wa.me/6281287236379',
          ),
          TeamMemberCard(
            name: 'Firmansyah Sutan Wahyu Prakosa',
            imageUrl: 'assets/images/stewie.png',
            numbers: '3337210030',
            words: 'Mobile Front-End Developer',
            facebookLink: 'https://www.facebook.com/firmansyahswp',
            instagramLink: 'https://www.instagram.com/firmans43_/',
            emailLink: 'mailto:firmansyahswp@gmail.com',
            whatsappLink: 'https://wa.me/6289501386022',
          ),
          TeamMemberCard(
            name: 'Mohamad Restu Zikri Novdian',
            imageUrl:
                'https://i.ibb.co/yXzy7pf/Mohamad-Restu-Zikri-Novdian.jpg',
            numbers: '3337210007',
            words: 'Mobile Front-End Developer',
            facebookLink: 'https://www.tiktok.com/@muhammadreztu636',
            instagramLink: 'https://www.instagram.com/mohamadreztu',
            emailLink: 'mailto:mohamadrestu@4grow.id',
            whatsappLink: 'https://wa.me/6287776623080',
          ),
          TeamMemberCard(
            name: 'Ageng Parikesit Sugiana',
            imageUrl: 'https://i.ibb.co/M7Jw4t8/IMG-20230716-104916-723.jpg',
            numbers: '3337210005',
            words: 'Mobile Front-End Developer',
            facebookLink: 'https://www.facebook.com/',
            instagramLink: 'https://www.instagram.com/johndoe',
            emailLink: 'mailto:ageng1511@gmail.com',
            whatsappLink: 'https://wa.me/6287882847883',
          ),

          // Tambahkan kartu untuk anggota tim lainnya di sini...
        ],
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String numbers;
  final String words;
  final String facebookLink;
  final String instagramLink;
  final String emailLink;
  final String whatsappLink;

  TeamMemberCard({
    required this.name,
    required this.imageUrl,
    required this.numbers,
    required this.words,
    required this.facebookLink,
    required this.instagramLink,
    required this.emailLink,
    required this.whatsappLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              imageUrl,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            numbers,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 8.0),
          Text(
            words,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon('assets/images/facebook.png', facebookLink),
              SizedBox(width: 8.0),
              buildSocialIcon('assets/images/instagram.png', instagramLink),
              SizedBox(width: 8.0),
              buildSocialIcon('assets/images/gmail.png', emailLink),
              SizedBox(width: 8.0),
              buildSocialIcon('assets/images/whatsapp.png', whatsappLink),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget buildSocialIcon(String imagePath, String link) {
    return GestureDetector(
      onTap: () {
        _launchURL(link);
      },
      child: Image.asset(
        imagePath,
        width: 30.0,
        height: 30.0,
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
