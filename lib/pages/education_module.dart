import 'package:flutter/material.dart';

class EducationalPage extends StatelessWidget {
  const EducationalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Educational Modules'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0), // Add padding for spacing
          color: const Color.fromARGB(255, 2, 69, 124), // Set background color
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ModuleCard(
                image: "assets/cybersecurity.jpg",
                module: "Module 1",
                title: 'Introduction to Cybersecurity',
                content: [
                  "In today's digital era, cybersecurity plays a pivotal role in safeguarding patient safety and confidential medical information within healthcare settings. As healthcare systems increasingly digitize their operations, they become prime targets for cyber threats, including malware, phishing attacks, and ransomware. These threats not only compromise patient data but also disrupt critical healthcare services, posing significant risks to patient care.",

                  "Key concepts in healthcare cybersecurity revolve around understanding the evolving threat landscape, ensuring data privacy, and maintaining regulatory compliance. Healthcare organizations must protect patient data from unauthorized access, adhering to regulations such as the Health Insurance Portability and Accountability Act (HIPAA) and the General Data Protection Regulation (GDPR). Compliance with standards like the Health Information Trust Alliance (HITRUST) Common Security Framework (CSF) is essential for demonstrating robust cybersecurity measures.",

                  "Challenges abound in healthcare cybersecurity, ranging from managing legacy systems with limited security support to addressing human factors like employee awareness and training. The interconnected nature of healthcare systems further complicates security management, expanding the attack surface for cybercriminals. Moreover, resource constraints, including budget limitations and staffing shortages, pose additional hurdles in implementing comprehensive cybersecurity measures.",

                  "To mitigate these challenges, healthcare organizations must adopt best practices in cybersecurity. This includes conducting regular risk assessments to identify vulnerabilities, providing comprehensive training to staff to promote cybersecurity awareness, and implementing encryption and access controls to protect sensitive patient data. Timely patch management and robust incident response planning are also critical components of a proactive cybersecurity strategy.",

                  "In conclusion, by understanding cybersecurity concepts, addressing challenges, and implementing best practices, healthcare organizations can effectively protect patient data and ensure the integrity of healthcare services in an increasingly digital landscape.",
                ],
              ),
              ModuleCard(
                module: "Module 2",
                image: "assets/healthcare.jpg",
                title: 'Supply Chain Attacks in Healthcare 4.0',
                content: [
                  "Supply chain attacks pose significant threats to the integrity and security of Healthcare 4.0 systems, which leverage digital technologies to enhance patient care and operational efficiency. In these attacks, malicious actors exploit vulnerabilities in interconnected healthcare devices and systems to compromise patient data and disrupt critical healthcare services.",
                  "Healthcare 4.0 environments encompass a wide range of interconnected devices, including medical IoT devices, electronic health records (EHR) systems, and pharmaceutical supply chains. This interconnectedness creates numerous entry points for attackers, who may seek to infiltrate the supply chain to introduce malware, steal sensitive information, or disrupt healthcare operations.",
                  "Recent supply chain attacks in the healthcare sector highlight the severity of these threats. Incidents involving compromised medical devices, tampered EHR systems, and counterfeit pharmaceuticals underscore the vulnerabilities inherent in Healthcare 4.0 supply chains. Such attacks not only jeopardize patient safety but also undermine trust in healthcare systems and regulatory compliance.",
                  "To mitigate the risks associated with supply chain attacks in Healthcare 4.0, organizations must adopt proactive risk management strategies. This includes implementing supply chain risk management frameworks to assess and mitigate vulnerabilities across the supply chain. Vendor security assessments and due diligence processes are essential for evaluating the security posture of third-party suppliers and service providers.",
                  "Additionally, threat intelligence sharing initiatives enable healthcare organizations to stay abreast of emerging threats and vulnerabilities in the supply chain. Collaboration among industry stakeholders, regulatory bodies, and cybersecurity experts is crucial for developing robust defenses against supply chain attacks.",
                  "Furthermore, implementing secure procurement practices, such as verifying the authenticity of medical devices and pharmaceuticals, helps prevent the introduction of counterfeit or tampered products into the supply chain. Enhanced visibility and transparency throughout the supply chain, facilitated by technologies like blockchain, can also bolster security and traceability.",
                  "By recognizing the unique challenges posed by supply chain attacks in Healthcare 4.0 and implementing proactive risk management measures, organizations can safeguard patient data, ensure the integrity of healthcare services, and maintain regulatory compliance in an increasingly interconnected healthcare ecosystem.",
                ],
              ),
              ModuleCard(
                module: "Module 3",
                image: "assets/swot.jpg",
                title: 'Identifying Weaknesses in Healthcare Systems',
                content: [
                  "Despite advancements in technology, healthcare systems remain vulnerable to a myriad of cybersecurity threats, necessitating a proactive approach to identify and mitigate vulnerabilities. This module focuses on recognizing common weaknesses within healthcare infrastructure and implementing strategies for proactive risk assessment and vulnerability management.",

                  "Key areas of vulnerability in healthcare systems include outdated software and hardware, inadequate access controls, and insufficient employee training and awareness. These vulnerabilities pose significant risks to patient safety, data privacy, and regulatory compliance, underscoring the importance of proactive risk identification and mitigation.",

                  "Through hands-on exercises and case studies, learners gain practical experience in conducting risk assessments and vulnerability scans within healthcare environments. They learn to identify security gaps, prioritize risks based on severity and impact, and develop remediation plans to address vulnerabilities effectively.",

                  "Emerging trends and technologies in vulnerability management, such as threat intelligence feeds, penetration testing, and security automation tools, are explored to provide learners with comprehensive insights. By adopting a systematic approach to identifying and addressing weaknesses in healthcare systems, organizations can enhance their cybersecurity posture and reduce the risk of data breaches and cyber incidents.",
                ],
              ),
              ModuleCard(
                image: "assets/supply-chain-attacks.webp",
                module: "Module 4",
                title:
                    'Mitigation Techniques in for Supply chain attacks in Healthcare 4.0',
                content: [
                  "Supply chain attacks pose a significant threat to the integrity and security of Healthcare 4.0 environments, where interconnected devices and systems create vulnerabilities that can be exploited by malicious actors. Mitigation strategies for supply chain attacks in Healthcare 4.0 require a multi-faceted approach that addresses vulnerabilities at various levels of the supply chain and implements proactive measures to detect and respond to potential threats. Here's a detailed overview of mitigation techniques tailored to mitigate supply chain attacks in Healthcare 4.0:",
                  """1. Supply Chain Risk Assessment:
                     Conducting comprehensive risk assessments of the healthcare supply chain is essential to identify potential vulnerabilities and threats. Organizations should assess the security posture of vendors, suppliers, and partners involved in the supply chain, evaluating factors such as security protocols, data handling practices, and third-party certifications. By understanding the risk landscape, organizations can prioritize mitigation efforts and allocate resources effectively.""",
                  """2. Vendor Security Assessments:
                     Implementing vendor security assessments enables healthcare organizations to evaluate the cybersecurity practices and capabilities of third-party vendors and suppliers. Organizations should establish criteria for assessing vendor security, including data protection measures, incident response capabilities, and compliance with industry regulations. Regular assessments should be conducted to ensure ongoing adherence to security standards and contractual obligations.
                  """,
                  """3. Supplier Security Contracts:
                     Developing robust security contracts with suppliers and vendors is critical to establishing clear expectations regarding cybersecurity responsibilities and liabilities. Contracts should outline specific security requirements, including data encryption standards, incident reporting procedures, and indemnification clauses. By formalizing security agreements, organizations can hold suppliers accountable for maintaining adequate security measures throughout the supply chain.
""",
                  """4. Continuous Monitoring and Threat Intelligence:
                     Implementing continuous monitoring systems and leveraging threat intelligence feeds allow healthcare organizations to detect and respond to supply chain threats in real-time. Monitoring network traffic, system logs, and user activities enables early detection of suspicious behavior and anomalous patterns indicative of potential supply chain attacks. Integrating threat intelligence feeds provides valuable insights into emerging threats and attack trends, enhancing the organization's ability to proactively mitigate risks.
""",
                  """5. Security Awareness Training:
                     Educating employees and stakeholders about supply chain security risks and best practices is essential to strengthen the human element of cybersecurity. Healthcare organizations should provide comprehensive security awareness training programs that cover topics such as phishing awareness, social engineering tactics, and secure data handling practices. By fostering a culture of security awareness, organizations can empower individuals to recognize and report potential supply chain threats effectively.",
""",
                  """6. Incident Response Planning:
                     Developing robust incident response plans specific to supply chain attacks enables healthcare organizations to respond promptly and effectively to security incidents. Plans should outline clear roles and responsibilities, escalation procedures, and communication protocols to facilitate coordinated response efforts. Regularly testing and updating incident response plans ensures readiness to mitigate supply chain attacks and minimize their impact on healthcare operations.",
  """,
                  """
                  7. Cybersecurity Collaboration and Information Sharing:
                     Engaging in cybersecurity collaboration initiatives and information sharing networks allows healthcare organizations to leverage collective expertise and resources in combating supply chain threats. Participating in industry-specific information sharing platforms, such as ISACs (Information Sharing and Analysis Centers), facilitates the exchange of threat intelligence and best practices among peer organizations. By collaborating with industry partners, organizations can strengthen their collective defenses against supply chain attacks.",
""",
                  "In conclusion, mitigating supply chain attacks in Healthcare 4.0 requires a proactive and multi-layered approach that addresses vulnerabilities across the supply chain ecosystem. By conducting risk assessments, implementing vendor security measures, and fostering a culture of security awareness, healthcare organizations can enhance their resilience to supply chain threats and safeguard patient data and critical healthcare infrastructure.",
                ],
              ),
              ModuleCard(
                module: "Module 5",
                image: "assets/compliance.jpg",
                title: 'Regulatory Compliance and Security Standards',
                content: [
                  "Regulatory compliance and adherence to security standards are paramount in the healthcare industry to protect patient privacy, ensure data security, and maintain the integrity of healthcare systems. Healthcare organizations are subject to a complex web of regulations, standards, and guidelines aimed at safeguarding sensitive health information and promoting ethical and responsible use of healthcare data. Here's an in-depth exploration of regulatory compliance requirements and security standards relevant to the healthcare sector:",
"""
                  1. Health Insurance Portability and Accountability Act (HIPAA):
                     HIPAA is a federal law in the United States that sets the standards for the protection of sensitive patient health information, known as protected health information (PHI). Covered entities, including healthcare providers, health plans, and healthcare clearinghouses, must comply with HIPAA's Privacy, Security, and Breach Notification Rules. HIPAA mandates measures such as access controls, encryption, and risk assessments to safeguard PHI and ensure patient privacy.
""",
                  """2. General Data Protection Regulation (GDPR):
                     GDPR is a European Union regulation that governs the processing and protection of personal data of EU residents, including health-related data. While not specific to the healthcare industry, GDPR applies to healthcare organizations that process data of EU patients. GDPR requires organizations to implement data protection measures, obtain consent for data processing, and notify authorities of data breaches within specified timeframes.
""",
                  """3. Health Information Technology for Economic and Clinical Health (HITECH) Act:
                     HITECH Act complements HIPAA by strengthening privacy and security protections for electronic health records (EHRs) and promoting the adoption of electronic health information exchange. HITECH Act provisions include expanded HIPAA enforcement, breach notification requirements, and incentives for the meaningful use of certified EHR technology.
""",
                  """
                  4. National Institute of Standards and Technology (NIST) Cybersecurity Framework:
                     NIST Cybersecurity Framework provides a voluntary framework of cybersecurity best practices for organizations to manage and mitigate cybersecurity risks. While not mandated by law, many healthcare organizations adopt the NIST framework to improve their cybersecurity posture and align with industry standards. The framework consists of five core functions: Identify, Protect, Detect, Respond, and Recover.
""",
                  """
                  5. HITRUST CSF (Common Security Framework):
                     HITRUST CSF is a comprehensive security framework specifically designed for the healthcare industry to address regulatory compliance and cybersecurity challenges. HITRUST CSF harmonizes various standards and regulations, including HIPAA, HITECH, and GDPR, into a single framework, streamlining compliance efforts for healthcare organizations. Achieving HITRUST CSF certification demonstrates an organization's commitment to data protection and security.
""",
                  """
                  6. ISO/IEC 27001:
                     ISO/IEC 27001 is an international standard for information security management systems (ISMS), providing a systematic approach to managing sensitive information and mitigating security risks. Healthcare organizations can use ISO/IEC 27001 to establish and maintain robust information security controls, ensuring the confidentiality, integrity, and availability of healthcare data. Compliance with ISO/IEC 27001 demonstrates adherence to globally recognized security standards.
""",
                  """
                  7. Industry-Specific Regulations and Guidelines:
                     In addition to overarching regulations, healthcare organizations must comply with industry-specific regulations and guidelines tailored to their operations and services. These may include regulations governing telemedicine, electronic prescribing, medical device security, and patient consent. Compliance with industry-specific regulations ensures that healthcare organizations meet the unique requirements and challenges of their sector.
""",
    "              By adhering to regulatory compliance requirements and security standards, healthcare organizations can protect patient data, mitigate security risks, and maintain trust and confidence in healthcare services. Robust compliance programs, supported by comprehensive security frameworks and ongoing risk assessments, are essential for navigating the complex regulatory landscape and promoting a culture of security and accountability within the healthcare industry."
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ModuleCard extends StatefulWidget {
  final String title;
  final List<String> content;
  final String image;
  final String module;

  const ModuleCard(
      {super.key,
      required this.title,
      required this.content,
      required this.image,
      required this.module});

  @override
  _ModuleCardState createState() => _ModuleCardState();
}

class _ModuleCardState extends State<ModuleCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      // Add bottom padding for spacing between cards
      child: Card(
        elevation: 4.0,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.module,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_expanded)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [

                    Column(

                      children: widget.content.take(2).map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                        e, // Display each element e of widget.content
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                        fontSize: 16.0,
                        ),
                        ),
                      )).toList(), // Convert Iterable to List as required by Column widget
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        // constraints: BoxConstraints(maxHeight: 150),
                        child: Image.asset(widget.image, fit: BoxFit.fill,)),
                    Column(
                      children: widget.content.getRange(2, widget.content.length).map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          e, // Display each element e of widget.content
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      )).toList(), // Convert Iterable to List as required by Column widget
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
