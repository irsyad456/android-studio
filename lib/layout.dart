import 'package:flutter/material.dart';

class layout extends StatelessWidget {
  const layout({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Call Among Us'),
        _buildButtonColumn(color, Icons.near_me, 'Paper Plane'),
        _buildButtonColumn(color, Icons.share, 'Share DOOM'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'The September 11 attacks, commonly known as 9/11, were four coordinated suicide'
            'terrorist attacks carried out by al-Qaeda against the United States on Tuesday, September 11, 2001.'
            'That morning, 19 terrorists hijacked four commercial airliners scheduled to travel from the New England'
            'and Mid-Atlantic regions of the East Coast to California. The hijackers '
            'crashed the first two planes into the Twin Towers of the World Trade Center in New York City,'
            "two of the five tallest buildings in the world at the time, and aimed the next two flights "
            "toward targets in or near Washington, D.C. in a less coordinated attack on the nation's capital."
            'The third team succeeded in crashing into the Pentagon, the headquarters '
            'of the U.S. Department of Defense in Arlington County, Virginia,'
            'while the fourth plane crashed in rural Pennsylvania following a passenger revolt.'
            'The attacks killed nearly 3,000 people and instigated the multi-decade global war on terror.',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ambatukam'),
        backgroundColor: Colors.white70,
      ),
      body: ListView(
        children: [
          Image.network(
            'data:image/jpeg;base64,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',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection
        ],
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: color
            ),
          ),
        )
      ],
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Some Text Maybe...',
                  style: TextStyle(
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
              Text(
                'Another Text :D',
              )
            ],
          )
      ),
      /*3*/
      const FavoriteWidget()
    ],
  ),
);



class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 9 + 11;

  void _toggleFavorite() {
    setState(() {
      if(_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else{
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.ac_unit)
                : const Icon(Icons.star_border)),
            color: Colors.yellowAccent,
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }
}

