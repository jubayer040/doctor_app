import 'package:doctor_app/constants/home_const.dart';
import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';

class DocFilterIcon extends StatelessWidget {
  const DocFilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await filterBottomSheetWidget(context);
      },
      icon: const Icon(Icons.filter_list_outlined, color: bluePrimary),
    );
  }

  filterBottomSheetWidget(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) => getFilterOption(),
    );
  }

  getFilterOption() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: textColor,
                    fontFamily: 'poppins_semibold',
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  categories.length,
                  (i) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            gradient: bodyGradient,
                            boxShadow: bodyShadow,
                          ),
                          child: Image.asset(categories[i].img,
                              fit: BoxFit.contain),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          i == 0 ? '' : categories[i].title,
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(color: bluePrimary, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('data1'),
            const SizedBox(height: 20),
            const Text('data22'),
            const SizedBox(height: 20),
            const Text('data333'),
            const SizedBox(height: 20),
            const Text('data4444'),
            const SizedBox(height: 25),
            getButtonStyle(
              const Center(
                child: Text(
                  'Apply',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
