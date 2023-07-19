import 'package:flutter/material.dart';
import 'package:flutter_components/views/benefits/components/ButtonTabBarCustom/button_tab_bar_custom.dart';
import 'components/CardBenefits/cards_benefits.dart';
import 'components/CardCustomizeCode/card_customize_code.dart';
import 'components/CardShare/card_share.dart';
import 'components/ItemsBenefits/items_benefits.dart';

class BenefitsView extends StatefulWidget {
  const BenefitsView({super.key});

  @override
  State<BenefitsView> createState() => _BenefitsViewState();
}

class _BenefitsViewState extends State<BenefitsView> {
  String tabSelected = 'recommended';

  void onChangeTabSelected(String value) {
    tabSelected = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[100],
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          height: 55.00,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ButtonTabBarCustom(
                textButton: 'Recomienda',
                isActive: tabSelected == 'recommended',
                onClick: () {
                  onChangeTabSelected('recommended');
                },
              ),
              ButtonTabBarCustom(
                textButton: 'Mis créditos',
                isActive: tabSelected == 'credits',
                onClick: () {
                  onChangeTabSelected('credits');
                },
              ),
              ButtonTabBarCustom(
                textButton: 'Alertas de tipo de cambio',
                isActive: tabSelected == 'typeChangeAlerts',
                onClick: () {
                  onChangeTabSelected('typeChangeAlerts');
                },
              ),
              ButtonTabBarCustom(
                textButton: 'Alertas de beneficios',
                isActive: tabSelected == 'typeBenefitsAlert',
                onClick: () {
                  onChangeTabSelected('typeBenefitsAlert');
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 15, right: 40, left: 40, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gana hasta S/100',
                      style: TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Comparte ',
                        style: const TextStyle(
                          color: Colors.black,
                          height: 1.5,
                        ),
                        children: <InlineSpan>[
                          const TextSpan(
                            text: 'tu código ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '76b7ledl',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(
                              width: 7,
                            ),
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              child: Icon(
                                Icons.copy,
                                size: 18,
                                color: Colors.blue[700],
                              ),
                            ),
                          ),
                          const TextSpan(
                            text:
                                ' con tus amigos y obtén créditos siguiendo estos pasos:',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Flex(
                      direction: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CardBenefits(),
                        CardBenefitsSemiBold(),
                        CardBenefitsBold(),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromARGB(255, 242, 245, 247),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 9),
                      child: const Text(
                        'Si tu recomendado hace su primer cambio ambos ganarán',
                        style: TextStyle(
                          color: Colors.black87,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const ItemsBenefits(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        'Solo se puede usar l sol de créditos por cada \$100 cambiados.',
                        style: TextStyle(color: Colors.black54, fontSize: 11),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        'Comparte tu código',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CardShareIcons(),
                    const SizedBox(
                      height: 30,
                    ),
                    const CardCustomizeCode()
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
