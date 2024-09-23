import 'package:cloud_firestore/cloud_firestore.dart';

class SubjectJson{
  List<Map<String,dynamic>> data2 = [
    {
      'icon':'https://cdn-icons-png.flaticon.com/512/8832/8832880.png',
      'label':'',
      'is_paid':true,
      'subject_type':[
        {
          'label':'',
          'type':'1',
        }
      ],
      'chapters':[
        {
          'description':'',
          'index':1,
          'is_paid':true,
          'label':'',
          'pdfLink':'',
          'totalTimeInMin':'120',
          'type':1
        }
      ]
    }
  ];

  List<Map<String,dynamic>> data = [
    {
      'icon':'https://cdn-icons-png.flaticon.com/512/8832/8832880.png',
      'label':'Free start',
      'is_paid':false,
      'subject_type':[
        {
          'label':'Zoology',
          'type':'1',
        },
        {
          'label':'Botany',
          'type':'2',
        },
        {
          'label':'Chemistry',
          'type':'3',
        },
        {
          'label':'Physics',
          'type':'4',
        }
      ],
      'chapters':[
        {
          'description':'Imagine a world where everything around you is constantly changing—animals, plants, even humans. Have you ever wondered how we all got here, or why there are so many different species? The answer lies in evolution',
          'index':1,
          'is_paid':false,
          'label':'What is evolution ?',
          'pdfLink':'https://www.canva.com/design/DAGKbSP19eQ/NB3mX6SOAnQ6cie5lrEQrA/view?embed',
          'totalTimeInMin':'120',
          'type':1
        },
        {
          'description':'A dicot leaf is a complex structure with layers that power the plant’s life. Want to uncover its hidden secrets?',
          'index':2,
          'is_paid':false,
          'label':'Dicot leaf',
          'pdfLink':'https://www.canva.com/design/DAGExB6fA7k/Ad39nzWTEhTI-gNHe14rIg/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Bond polarity is like a tug-of-war between atoms. When one atom pulls electrons more towards itself, the bond becomes polarized, creating a slight positive and negative charge at each end. This uneven sharing of electrons is what gives molecules their unique properties. Curious to know how this affects the behavior of molecules? ',
          'index':3,
          'is_paid':false,
          'label':'Polarity of bonds',
          'pdfLink':'https://www.canva.com/design/DAGLP22-S9I/6k5i_hH2MErFQKSY4OaBVQ/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Potential energy is the stored energy an object has because of its position or state. It’s like a spring that\'s compressed, ready to release energy when the position changes. This energy can be converted into motion or other forms when the object is set free. Want to see how this hidden energy works in the real world? Let’s explore!',
          'index':4,
          'is_paid':false,
          'label':'Potential energy',
          'pdfLink':'https://www.canva.com/design/DAGLZyQ9JcM/Mn7nEjkc_mJLY0RvFmQxHQ/view?embed',
          'totalTimeInMin':'120',
          'type':4
        }
      ]
    },
    {
      'icon':'https://cdn-icons-png.flaticon.com/512/8832/8832880.png',
      'label':'Zoology',
      'is_paid':true,
      'subject_type':[
        {
          'label':'Animal kingdom ',
          'type':'1',
        },
        {
          'label':'Structural organisation in animals',
          'type':'2',
        },
        {
          'label':'Biomolecules',
          'type':'3',
        },
        {
          'label':'Breathing and Exchange of gases',
          'type':'4',
        },
        {
          'label':'Body fluids and circulation',
          'type':'5',
        },
        {
          'label':'Excretory products and their elimination',
          'type':'6',
        },
        {
          'label':'Locomotion and Movement',
          'type':'7',
        },
        {
          'label':'Neural control and coordination ',
          'type':'8',
        },
        {
          'label':'Chemical coordination and integration',
          'type':'9',
        },
        {
          'label':'Human reproduction ',
          'type':'10',
        },
        {
          'label':'Reproductive Health ',
          'type':'11',
        },
        {
          'label':'Evolution ',
          'type':'12',
        },
        {
          'label':'Human Health and Diseases',
          'type':'13',
        },
      ],
      'chapters':[
        {
          'description':'The Animal Kingdom is a wild, diverse world where every creature, from tiny insects to massive mammals, plays a unique role. Ready to uncover the secrets of life’s incredible variety?',
          'index':1,
          'is_paid':true,
          'label':'Animal kingdom',
          'pdfLink':'https://www.canva.com/design/DAGKjSFB88o/ANgFroU3c7IwjTrxcNdpnw/view?embed',
          'totalTimeInMin':'120',
          'type':1
        },
        {
          'description':'Structural organization in animals is the blueprint of life, showing how cells form tissues, tissues create organs, and organs build complex systems. Curious to see how this organization brings animals to life? Let’s explore!',
          'index':2,
          'is_paid':true,
          'label':'Basic introduction',
          'pdfLink':'https://www.canva.com/design/DAGJy35KN7g/Dl__Sw4vQTlXZl2EdQMzpg/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'The morphology of a frog reveals its fascinating design—streamlined for jumping, swimming, and survival. From its webbed feet to its slimy skin, every feature serves a purpose. Ready to dive into the details of how a frog\'s body is perfectly built for its amphibious lifestyle?',
          'index':2,
          'is_paid':true,
          'label':'Morphology of frog 🐸',
          'pdfLink':'https://www.canva.com/design/DAGJy_g-Clw/eeom8FtDWk5Sv11F9rSNZg/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'The anatomy of a frog is a detailed look inside its body, revealing how organs like the heart, lungs, and digestive system work together to support its life on land and in water. Curious to explore how these internal systems keep a frog thriving? Let’s dive in!',
          'index':2,
          'is_paid':true,
          'label':'Anatomy of frog 🐸',
          'pdfLink':'https://www.canva.com/design/DAGJzbUsf_E/BUp1Oy3gwr8V4ER1xFyxHw/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'"Biomolecules are the building blocks of life, driving the incredible diversity in living organisms. Curious how these tiny molecules create such variety?',
          'index':3,
          'is_paid':true,
          'label':'Biomolecules ( Part - A )',
          'pdfLink':'https://www.canva.com/design/DAGJtzIol58/GwA6MI8Qb38Ag3kwKoFBKA/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Primary metabolites are vital for survival, while secondary metabolites play unique roles. Proteins and enzymes drive and speed up life’s essential reactions.',
          'index':3,
          'is_paid':true,
          'label':'Biomolecules ( Part - B )',
          'pdfLink':'https://www.canva.com/design/DAGJuVcDCs4/npHEc16I0z_M8qWhsMZODA/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Enzymes are biological catalysts that speed up chemical reactions in the body, making life’s processes happen quickly and efficiently.',
          'index':3,
          'is_paid':true,
          'label':'Biomolecules ( Part - C )',
          'pdfLink':'https://www.canva.com/design/DAGJvdzD5no/lcN2Ban-YZqufXEr7cvxgw/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Different animals have varied respiratory organs: lungs in mammals, gills in fish, tracheae in insects, and skin in amphibians. Each organ is adapted to their environment for efficient gas exchange',
          'index':4,
          'is_paid':true,
          'label':'Respiratory organs in different animals',
          'pdfLink':'https://www.canva.com/design/DAGJ1qrDOVA/ZFcNtE2M9VvneK7Vpv4weg/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Breathing works by inhaling air as the diaphragm contracts, expanding the lungs, and exhaling as the diaphragm relaxes, expelling air.',
          'index':4,
          'is_paid':true,
          'label':'Mechanism of Breathing',
          'pdfLink':'https://www.canva.com/design/DAGJ_2nGvG4/IZQUnBtM542SqS1hkutDmA/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Respiratory volumes measure the amount of air in the lungs during different phases of breathing, while capacities combine these volumes to assess overall lung function.',
          'index':4,
          'is_paid':true,
          'label':'Respiratory Volume and Capacities',
          'pdfLink':'https://www.canva.com/design/DAGKAczp8gE/dWjytrLgb8z_5MJ3GuKntg/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Exchange of gases occurs in the lungs where oxygen from inhaled air passes into the blood, and carbon dioxide from the blood is released into the lungs to be exhaled.',
          'index':4,
          'is_paid':true,
          'label':'Exchange of gases',
          'pdfLink':'https://www.canva.com/design/DAGKAziwF8k/OgA7CSo_4sJ3oVSzirusVg/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Body fluids include blood, lymph, and tissue fluid, which transport nutrients, waste, and other substances throughout the body, maintaining balance and supporting life functions.',
          'index':5,
          'is_paid':true,
          'label':'Body fluids',
          'pdfLink':'https://www.canva.com/design/DAGKFY7rtxM/IdTw2U5FLr6FbwZnPngXLQ/view?embed',
          'totalTimeInMin':'120',
          'type':5
        },
        {
          'description':'The human heart is a powerful pump that circulates blood throughout the body. It pumps oxygen-rich blood to organs and tissues and returns oxygen-poor blood to the lungs for reoxygenation, ensuring that the body functions smoothly.',
          'index':5,
          'is_paid':true,
          'label':'Human circulatory system',
          'pdfLink':'https://www.canva.com/design/DAGKKWuUyb0/l1ORdwSkPjL-D7LeItBDVQ/view?embed',
          'totalTimeInMin':'120',
          'type':5
        },
        {
          'description':'Excretory products like urea, uric acid, and ammonia are waste substances produced by the body. The elimination process removes these wastes, primarily through the kidneys, ensuring the body\'s internal environment remains balanced and healthy.',
          'index':6,
          'is_paid':true,
          'label':'Excretory products and their elimination',
          'pdfLink':'https://www.canva.com/design/DAGKMUFr7g8/ar_B_rqwOKqeSmHcDxyjiw/view?embed',
          'totalTimeInMin':'120',
          'type':6
        },
        {
          'description':'Locomotion and movement involve the ability of organisms to move from one place to another or move body parts, driven by muscles, bones, and joints working together for various activities like walking, running, or swimming.',
          'index':7,
          'is_paid':true,
          'label':'Locomotion and Movement',
          'pdfLink':'https://www.canva.com/design/DAGKQl530_M/FYw9T7ajCP94xd2Km_I4-A/view?embed',
          'totalTimeInMin':'120',
          'type':7
        },
        {
          'description':'Neural control and coordination involve the nervous system, where the brain, spinal cord, and nerves work together to process information, control body functions, and coordinate responses to stimuli, ensuring the body operates smoothly and efficiently.',
          'index':8,
          'is_paid':true,
          'label':'Neural control and coordination',
          'pdfLink':'https://www.canva.com/design/DAGKQl530_M/FYw9T7ajCP94xd2Km_I4-A/view?embed',
          'totalTimeInMin':'120',
          'type':8
        },
        {
          'description':'Chemical coordination and integration involve hormones that regulate and coordinate body functions. These chemical messengers, produced by endocrine glands, ensure that different body systems work together harmoniously.',
          'index':9,
          'is_paid':true,
          'label':'Chemical coordination and integration',
          'pdfLink':'https://www.canva.com/design/DAGKQw5yzjY/H3xX5QOYQd9yBDYjn_byvA/view?embed',
          'totalTimeInMin':'120',
          'type':9
        },
        {
          'description':'Human reproduction involves the process by which new life is created. It includes the formation of gametes (sperm and egg), fertilization, and the development of the embryo into a fetus, leading to childbirth.',
          'index':10,
          'is_paid':true,
          'label':'Human reproduction',
          'pdfLink':'https://www.canva.com/design/DAGKWmqijrQ/PPp0bXoeBohM4vsqibmqMQ/view?embed',
          'totalTimeInMin':'120',
          'type':10
        },
        {
          'description':'Reproductive health focuses on maintaining the well-being of the reproductive system, ensuring safe and healthy reproductive processes, preventing diseases, and promoting informed choices for family planning.',
          'index':11,
          'is_paid':true,
          'label':'Reproductive Health',
          'pdfLink':'https://www.canva.com/design/DAGKXuAIwew/moCaNl-AQi8u4X1Tgah7BA/view?embed',
          'totalTimeInMin':'120',
          'type':11
        },
        {
          'description':'Evolution is the process by which species of organisms change over time through natural selection, leading to the diversity of life on Earth. It explains how all living things share common ancestors and adapt to their environments over generations.',
          'index':12,
          'is_paid':true,
          'label':'What is Evolution?',
          'pdfLink':'https://www.canva.com/design/DAGKbSP19eQ/NB3mX6SOAnQ6cie5lrEQrA/view?embed',
          'totalTimeInMin':'120',
          'type':12
        },
        {
          'description':'The birth of our Earth occurred around 4.5 billion years ago when dust and gas surrounding the young Sun clumped together through gravity, forming the planet. Over time, Earth\'s surface cooled, forming solid land, while volcanic activity released gases that created the early atmosphere. ',
          'index':12,
          'is_paid':true,
          'label':'Birth of our Earth 🌎🌍',
          'pdfLink':'https://www.canva.com/design/DAGKbymg4-Q/pzfxywt8Z9GEIfef5WL6Sw/view?embed',
          'totalTimeInMin':'120',
          'type':12
        },
        {
          'description':'"Adaptive radiation is the process where a single species evolves into multiple distinct species, each adapted to different environments or niches. This rapid diversification allows organisms to exploit various habitats and resources.',
          'index':12,
          'is_paid':true,
          'label':'Adaptive radiation',
          'pdfLink':'https://www.canva.com/design/DAGKdv3ccho/v540KpCAZZBX5D34hTQxCw/view?embed',
          'totalTimeInMin':'120',
          'type':12
        },
        {
          'description':'The Hardy-Weinberg Principle states that in a large, randomly mating population, allele and genotype frequencies remain constant from generation to generation, provided there is no mutation, migration, selection, or genetic drift. It serves as a baseline to study how these factors influence genetic variation.',
          'index':12,
          'is_paid':true,
          'label':'Hardy Weinberg Principle',
          'pdfLink':'https://www.canva.com/design/DAGKw0hxAP0/QSKTtrxIbGg03FSmaIB8yA/view?embed',
          'totalTimeInMin':'120',
          'type':12
        },
        {
          'description':'Evolution is the gradual process by which species change over time through genetic variation and natural selection. It explains the diversity of life on Earth, showing how simple organisms evolved into more complex forms, leading to the vast array of species we see today. ',
          'index':12,
          'is_paid':true,
          'label':'A brief account to evolution',
          'pdfLink':'https://www.canva.com/design/DAGKdzZG6dA/QMdsoc_8k-aZnOlQAkEPJg/view?embed',
          'totalTimeInMin':'120',
          'type':12
        },
        {
          'description':'Human health refers to the overall well-being of the body and mind, while diseases are conditions that disrupt normal bodily functions.',
          'index':13,
          'is_paid':true,
          'label':'Human health and diseases',
          'pdfLink':'https://www.canva.com/design/DAGKd9dAzMc/PU4StgwYi-L2yv6qZHKtTQ/view?embed',
          'totalTimeInMin':'120',
          'type':13
        },
      ]
    },
    {
      'icon':'https://cdn-icons-png.flaticon.com/512/8832/8832880.png',
      'label':'Botany',
      'is_paid':true,
      'subject_type':[
        {
          'label':'The living world',
          'type':'1',
        },
        {
          'label':'Biological Classification',
          'type':'2',
        },
        {
          'label':'Plant Kingdom',
          'type':'3',
        },
        {
          'label':'Morphology of flowering plants ',
          'type':'4',
        },
        {
          'label':'Anatomy of flowering plants',
          'type':'5',
        },
        {
          'label':'Cell - The unit of life',
          'type':'6',
        },
        {
          'label':'Cell cycle and cell division',
          'type':'7',
        },
        {
          'label':'Photosynthesis in higher plants',
          'type':'8',
        },
        {
          'label':'Respiration in plants',
          'type':'9',
        },
        {
          'label':'Plant Growth and development',
          'type':'10',
        },
        {
          'label':'Sexual reproduction in flowering plants',
          'type':'11',
        },
        {
          'label':'Principles of Inheritance and Variations',
          'type':'12',
        },
        {
          'label':'Molecular Basis Of Inheritance',
          'type':'13',
        },
        {
          'label':'Microbes in Human welfare ',
          'type':'14',
        },
        {
          'label':'Biotechnology - Principle and processes',
          'type':'15',
        },
        {
          'label':'Biotechnology and its applications',
          'type':'16',
        },
        {
          'label':'Organisms and population',
          'type':'17',
        },
        {
          'label':'Ecosystem ',
          'type':'18',
        },
        {
          'label':'Biodiversity and its conversation',
          'type':'19',
        },
      ],
      'chapters':[
        {
          'description':'Diversity in living organisms means the variety of life forms on Earth, including different species of plants, animals, and microorganisms. This variety is important for the balance of ecosystems and helps in sustaining life.',
          'index':1,
          'is_paid':true,
          'label':'Diversity in the living world',
          'pdfLink':'https://www.canva.com/design/DAGEFDlx0qc/h6EbMuzmmdhucu1P_b5I0w/view?embed',
          'totalTimeInMin':'120',
          'type':1
        },
        {
          'description':'The living world refers to all forms of life on Earth, including plants, animals, fungi, and microorganisms. It encompasses the incredible diversity of organisms that interact with each other and their environments.',
          'index':1,
          'is_paid':true,
          'label':'The living world 🌎 ( Part - A )',
          'pdfLink':'https://www.canva.com/design/DAGEFh9sq2M/E8T6sK50fBTygau6v9y3hQ/view?embed',
          'totalTimeInMin':'120',
          'type':1
        },
        {
          'description':'The living world is dynamic, constantly evolving, and plays a crucial role in maintaining the balance of ecosystems and supporting life on our planet.',
          'index':1,
          'is_paid':true,
          'label':'The living world 🌍 ( Part - B )',
          'pdfLink':'https://www.canva.com/design/DAGEFuJu7TI/uFL7doE8ilaTszpnDQxrrQ/view?embed',
          'totalTimeInMin':'120',
          'type':1
        },
        {
          'description':'Biological classification is the system used by scientists to organize and categorize all living organisms based on their similarities and differences. ',
          'index':2,
          'is_paid':true,
          'label':'Basic information',
          'pdfLink':'https://www.canva.com/design/DAGEJ7nkxaw/rytZNJclemq820ZLMprSfQ/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Monera is a kingdom in biological classification that includes all prokaryotic organisms, which are unicellular and lack a true nucleus. This group primarily consists of bacteria and cyanobacteria (blue-green algae).',
          'index':2,
          'is_paid':true,
          'label':'Monera',
          'pdfLink':'https://www.canva.com/design/DAGEKGsbt2U/T6NQqbnDgMFAINhuUw_Xcg/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Protista is a kingdom in biological classification that includes a diverse group of eukaryotic, mostly unicellular organisms. Unlike the Monera, Protists have a true nucleus with a membrane. This kingdom includes organisms like algae, protozoa, and slime molds. ',
          'index':2,
          'is_paid':true,
          'label':'Protista',
          'pdfLink':'https://www.canva.com/design/DAGEKX3iT3I/NbaF9nIvbph1fhEO5cfYww/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Fungi is a kingdom in biological classification that includes a diverse group of eukaryotic organisms, such as mushrooms, molds, and yeasts.',
          'index':2,
          'is_paid':true,
          'label':'Fungi',
          'pdfLink':'https://www.canva.com/design/DAGEKQNSBg8/qHI3Ea2Sz9LFJ6aCkh4GQQ/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Viruses, viroids, and prions are unique infectious agents, distinct from living organisms, that challenge traditional definitions of life.',
          'index':2,
          'is_paid':true,
          'label':'Viruses , viroids and prions',
          'pdfLink':'https://www.canva.com/design/DAGEKQkAJKw/TqzKhEuGASrb7R1jrvP-Dg/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Lichens are unique organisms formed by a symbiotic relationship between a fungus and an alga or cyanobacterium. In this partnership, the fungus provides structure and protection, while the alga or cyanobacterium produces food through photosynthesis.',
          'index':2,
          'is_paid':true,
          'label':'Lichens',
          'pdfLink':'https://www.canva.com/design/DAGEKevNdYc/Zvxk0PkQKogpNauhgLyI0w/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'The Plant Kingdom, also known as Kingdom Plantae, includes all multicellular, eukaryotic organisms that primarily perform photosynthesis to produce their food. Plants are characterized by having cell walls made of cellulose, chloroplasts containing chlorophyll, and the ability to grow and reproduce in diverse environments.',
          'index':3,
          'is_paid':true,
          'label':'Basic information',
          'pdfLink':'https://www.canva.com/design/DAGEKmrg1Dw/rV3GZESkfPyikqeMTfWHqw/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Algae are a diverse group of simple, photosynthetic organisms found primarily in aquatic environments, including freshwater, marine, and moist terrestrial habitats. They range from microscopic single-celled organisms to large multicellular forms like seaweeds.',
          'index':3,
          'is_paid':true,
          'label':'Algae',
          'pdfLink':'https://www.canva.com/design/DAGELHH22aw/0OUxOl1TvcVdDLHJJalp_g/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Green algae are simple, photosynthetic organisms found in water and on land. They are green due to chlorophyll and play a key role in producing oxygen and serving as a food source in ecosystems. Some green algae are also used as nutritional supplements. They are considered the ancestors of land plants.',
          'index':3,
          'is_paid':true,
          'label':'Green alage',
          'pdfLink':'https://www.canva.com/design/DAGFZhzwFyg/dgo-vQtm75bpkn3xtLiQKA/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Brown algae, belonging to the group Phaeophyta, are large, multicellular algae found mostly in marine environments, especially in cold waters. They are brown due to the presence of a pigment called fucoxanthin, which masks the green of chlorophyll.',
          'index':3,
          'is_paid':true,
          'label':'Brown algae',
          'pdfLink':'https://www.canva.com/design/DAGFZ7dsedQ/6Jbp_8s8H4MBEkzPZlcRSA/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Red algae, or Rhodophyta, are a group of mostly multicellular algae found primarily in marine environments, particularly in warm, tropical waters. They are red due to the presence of a pigment called phycoerythrin, which allows them to absorb light in deep water.',
          'index':3,
          'is_paid':true,
          'label':'Red algae',
          'pdfLink':'https://www.canva.com/design/DAGFZ5-GDEk/9SPZ0MU9-l3v54InlodgKw/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Bryophytes are non-vascular plants, which include mosses, liverworts, and hornworts. They are typically small and found in moist, shaded environments. Unlike other plants, bryophytes do not have true roots, stems, or leaves, and they rely on water for reproduction.',
          'index':3,
          'is_paid':true,
          'label':'Bryophytes',
          'pdfLink':'https://www.canva.com/design/DAGFZ5-GDEk/9SPZ0MU9-l3v54InlodgKw/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Both liverworts and mosses are important for the ecosystem and are among the earliest plants to colonize land.',
          'index':3,
          'is_paid':true,
          'label':'Liverworts and Mosses',
          'pdfLink':'https://www.canva.com/design/DAGFZ1sCtU8/S1uFjNrJXGy6Wakp1CPPYA/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Pteridophytes are a group of vascular plants that include ferns, horsetails, and club mosses. Unlike bryophytes, pteridophytes have true roots, stems, and leaves, and they possess a vascular system that allows them to transport water and nutrients throughout the plant.',
          'index':3,
          'is_paid':true,
          'label':'Pteridophytes',
          'pdfLink':'https://www.canva.com/design/DAGFZ5QHxDY/_N7idzdMLHtvM5WBkC3J8A/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Gymnosperms are a group of seed-producing plants that includes conifers like pines, firs, and spruces. Unlike angiosperms (flowering plants), gymnosperms do not produce flowers or fruits; instead, their seeds are exposed or "naked," typically found in cones.',
          'index':3,
          'is_paid':true,
          'label':'Gymnosperms',
          'pdfLink':'https://www.canva.com/design/DAGFZyXUhSQ/rtI4UuGBKqpvey6WgXzdKw/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },
        {
          'description':'Roots are the underground parts of a plant that anchor it to the soil and absorb water and nutrients essential for growth. They also store food and sometimes reproduce new plants. Roots have tiny hair-like structures called root hairs that increase the surface area for absorption.',
          'index':4,
          'is_paid':true,
          'label':'Root',
          'pdfLink':'https://www.canva.com/design/DAGEe_0WnMI/9D-_Y8jCs52b86Quki2NOw/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'The stem is the main supporting structure of a plant that connects the roots to the leaves, flowers, and fruits. It serves several important functions: transporting water, nutrients, and food between the roots and the rest of the plant, providing support to keep the plant upright, and storing nutrients.',
          'index':4,
          'is_paid':true,
          'label':'Stem',
          'pdfLink':'https://www.canva.com/design/DAGEfOegka4/lyXUFEzepWOGzJe6R1bVKA/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'The leaf is a vital part of a plant that is primarily responsible for photosynthesis, the process by which plants make their food using sunlight, carbon dioxide, and water. Leaves are typically flat and green, containing chlorophyll, which absorbs sunlight.',
          'index':4,
          'is_paid':true,
          'label':'Leaf 🌿',
          'pdfLink':'https://www.canva.com/design/DAGEfUw9i8U/UqJC-KVXtg5iwoZFYC30Jg/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Venation refers to the pattern of veins in a leaf. Veins are the structures that transport water, nutrients, and food throughout the leaf. ',
          'index':4,
          'is_paid':true,
          'label':'Venation',
          'pdfLink':'https://www.canva.com/design/DAGEfQ5yYEk/8PlRmXkJxHzEvHZQ2r9VQA/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Each type of leaf is adapted to the specific needs of the plant and its environment, helping the plant survive and thrive in various conditions.',
          'index':4,
          'is_paid':true,
          'label':'Types of leaves',
          'pdfLink':'https://www.canva.com/design/DAGEfUw9i8U/UqJC-KVXtg5iwoZFYC30Jg/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Phyllotaxy refers to the arrangement of leaves on the stem of a plant. The pattern of leaf arrangement is important for maximizing light capture and minimizing shading of other leaves.',
          'index':4,
          'is_paid':true,
          'label':'Phyllotaxy',
          'pdfLink':'https://www.canva.com/design/DAGEjdc4w2E/7QIqqS-a7U0Up8ivUzHyuw/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'A flower is the reproductive structure of flowering plants (angiosperms).  Flowers play a crucial role in the reproduction of plants, facilitating the process of pollination and the development of seeds and fruits.',
          'index':4,
          'is_paid':true,
          'label':'The flower 🌺🌹',
          'pdfLink':'https://www.canva.com/design/DAGEqPPehNs/YuKp3IEcb6CdVTmNqzBecQ/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'A flower has four main parts: sepals, petals, stamens, and pistil/carpel. Sepals protect the flower bud, while petals attract pollinators with their color and scent. Stamens are the male part of the flower, producing pollen. The pistil or carpel is the female part, containing the ovary, which holds the ovules that develop into seeds after fertilization.',
          'index':4,
          'is_paid':true,
          'label':'Parts of a flower',
          'pdfLink':'https://www.canva.com/design/DAGEqDQ02uk/z1NN1E3rkUeRw2j03EqTZQ/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'Inflorescence is the arrangement of flowers on the stem of a plant. It can be classified into two main types: racemose, where flowers grow along a central axis in a sequence, and cymose, where the main flower blooms first, followed by others in a defined pattern. ',
          'index':4,
          'is_paid':true,
          'label':'Inflorescence',
          'pdfLink':'https://www.canva.com/design/DAGEj5JpeLs/vZDoBX2jxK-A36hcMeqsfg/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'A fruit is the mature ovary of a flowering plant, usually containing seeds. It develops after fertilization and helps in seed dispersal. Fruits can be fleshy, like apples and oranges, or dry, like nuts and beans.',
          'index':4,
          'is_paid':true,
          'label':'The fruit 🥥 🥭',
          'pdfLink':'https://www.canva.com/design/DAGEqD4tL_0/KzzDcyZrGw7cIyTfz-Az1Q/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          'description':'A seed is the reproductive unit of a plant, containing an embryo and stored nutrients enclosed in a protective outer coat. It develops from the fertilized ovule and can grow into a new plant under suitable conditions.',
          'index':4,
          'is_paid':true,
          'label':'The seed',
          'pdfLink':'https://www.canva.com/design/DAGEqf80rx8/ERUQX34BlneHRfSRvkaSiQ/view?embed',
          'totalTimeInMin':'120',
          'type':4
        },
        {
          "description": "The anatomy of flowering plants includes the internal structure of various organs like roots, stems, leaves, and flowers. It focuses on tissues such as epidermis (outer protective layer), vascular tissues (xylem and phloem for transport), and ground tissues (parenchyma, collenchyma, and sclerenchyma for support and storage).",
          "index": 5,
          "is_paid": true,
          "label": "Basic Information",
          "pdfLink": "https://www.canva.com/design/DAGEqZ9RWS4/FTXaIGU0rB5IbrOEVRy6zA/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "The epidermal tissue system is the outermost layer of cells in plants, covering leaves, stems, and roots. It protects the plant from water loss, injury, and infection. It includes structures like stomata (pores for gas exchange) and trichomes (hair-like structures for protection).",
          "index": 5,
          "is_paid": true,
          "label": "Epidermal tissue system",
          "pdfLink": "https://www.canva.com/design/DAGEqsfVAJY/wRl7qV19LhhdKB8m2q6Dqg/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "The ground tissue system in plants consists of all tissues that are neither dermal nor vascular. This system fills the space between the epidermis and vascular tissues, playing various roles in growth, support, and storage.",
          "index": 5,
          "is_paid": true,
          "label": "The ground tissue system",
          "pdfLink": "https://www.canva.com/design/DAGEqyQkgwg/Naz8NCFHsCt45Ztj8fAYCg/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "The vascular tissue system in plants is responsible for the transport of water, nutrients, and food throughout the plant. These tissues work together to maintain the plant's overall health and growth.",
          "index": 5,
          "is_paid": true,
          "label": "The vascular tissue system",
          "pdfLink": "https://www.canva.com/design/DAGErJ6LBC0/Vy_5_7Fc0u_uBfl72vs8aA/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A dicotyledonous root has a taproot system with a central star-shaped xylem surrounded by phloem. It includes an outer epidermis, a cortex for storage, and an endodermis that controls water and nutrient flow.",
          "index": 5,
          "is_paid": true,
          "label": "Dicotyledonous root",
          "pdfLink": "https://www.canva.com/design/DAGErNSyMPk/bSMB2MmEKNcli5fO9qGk2A/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A monocotyledonous root has a fibrous root system with a ring of vascular bundles. The xylem and phloem are arranged in a circular pattern. It includes an outer epidermis, a cortex for storage, and an endodermis that regulates water and nutrient intake.",
          "index": 5,
          "is_paid": true,
          "label": "Monocotyledonous root",
          "pdfLink": "https://www.canva.com/design/DAGErDJ1V6s/k3PrqH4v5F1J1GnBa9IcIg/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A dicotyledonous stem has vascular bundles arranged in a ring. Each bundle has xylem on the inside and phloem on the outside, with a layer of cambium in between for growth. The stem also has an outer epidermis, a cortex for storage, and a central pith.",
          "index": 5,
          "is_paid": true,
          "label": "Dicotyledonous stem",
          "pdfLink": "https://www.canva.com/design/DAGEw-Rnqwc/nQPvLYMt1PuGZS4lH1oUCw/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A monocotyledonous stem has vascular bundles scattered throughout the stem, without a clear arrangement. Each bundle has xylem and phloem but no cambium, so there's no secondary growth. The stem has an outer epidermis and ground tissue that fills the rest of the space.",
          "index": 5,
          "is_paid": true,
          "label": "Monocotyledonous stem",
          "pdfLink": "https://www.canva.com/design/DAGExM2WoQc/KoiFOc3TzvoxfWNp9WHz2w/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A dicotyledonous leaf has a reticulate venation pattern, with a network of veins. The leaf consists of an upper and lower epidermis, a mesophyll layer (with palisade and spongy parenchyma for photosynthesis), and vascular bundles within the veins. Stomata are usually more abundant on the lower epidermis.",
          "index": 5,
          "is_paid": true,
          "label": "Dicotyledonous leaf",
          "pdfLink": "https://www.canva.com/design/DAGExB6fA7k/Ad39nzWTEhTI-gNHe14rIg/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A monocotyledonous leaf has parallel venation, with veins running parallel to each other. The leaf has an upper and lower epidermis, a mesophyll layer that is generally not divided into palisade and spongy parenchyma, and vascular bundles aligned with the veins. Stomata are usually evenly distributed on both surfaces.",
          "index": 5,
          "is_paid": true,
          "label": "Monocotyledonous leaf",
          "pdfLink": "https://www.canva.com/design/DAGExGs6xqw/eh97xbraXXu8SoNN3YrzDQ/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "A cell is the basic unit of life, forming the structure and function of all living organisms. Cells can be prokaryotic (simple, without a nucleus) or eukaryotic (complex, with a nucleus). Each cell carries out essential functions like energy production, growth, and reproduction, making it the fundamental building block of life.",
          "index": 6,
          "is_paid": true,
          "label": "Basic Information",
          "pdfLink": "https://www.canva.com/design/DAGExDOCy6s/pW5pXz9GO6twMOwAl5GRsw/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "A eukaryotic cell has a true nucleus enclosed by a nuclear membrane and contains membrane-bound organelles like mitochondria, endoplasmic reticulum, and Golgi apparatus. These cells are found in plants, animals, fungi, and protists, and are more complex than prokaryotic cells.",
          "index": 6,
          "is_paid": true,
          "label": "Eukaryotic cell",
          "pdfLink": "https://www.canva.com/design/DAGEyIYm5eU/3VrZMykixIk64zkLnhBJnw/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "The cell wall is a rigid outer layer found in plant cells, fungi, and some bacteria. It provides structural support, protection, and helps maintain the shape of the cell. In plants, it is mainly made of cellulose.",
          "index": 6,
          "is_paid": true,
          "label": "Cell wall",
          "pdfLink": "https://www.canva.com/design/DAGE0Kx8oks/-QSt2jQfBaBXnsDJrbZ7VA/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "The endomembrane system in a cell consists of interconnected organelles, including the endoplasmic reticulum (ER), Golgi apparatus, lysosomes, and vacuoles. These organelles work together to modify, package, and transport proteins and lipids within the cell.",
          "index": 6,
          "is_paid": true,
          "label": "Endomembrane system",
          "pdfLink": "https://www.canva.com/design/DAGE0I6tDs0/VTdH5BlPPPWjI4F0EqakJw/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "Mitochondria are the cell's powerhouses, generating energy in the form of ATP through cellular respiration. They have a double membrane, with the inner membrane folded into cristae, increasing the surface area for energy production. Mitochondria also have their own DNA, enabling them to replicate independently within the cell.",
          "index": 6,
          "is_paid": true,
          "label": "Mitochondria",
          "pdfLink": "https://www.canva.com/design/DAGE0ZG6sLc/EPg_uYrrxToNgQBgSVQeeA/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "Plastids are organelles in plant cells, mainly responsible for photosynthesis (chloroplasts), pigment storage (chromoplasts), and storage of starch, oils, or proteins (leucoplasts).",
          "index": 6,
          "is_paid": true,
          "label": "Plastids",
          "pdfLink": "https://www.canva.com/design/DAGE0bB_umQ/9_FBtx3tFwYI2TYGtqls6A/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "The cytoskeleton is a network of protein fibers in the cell that provides structure, supports the cell, and aids in movement. It includes microfilaments, intermediate filaments, and microtubules.",
          "index": 6,
          "is_paid": true,
          "label": "Cytoskeleton",
          "pdfLink": "https://www.canva.com/design/DAGE0uQV3hA/hDWtNyJm_cR36WUT7UV24Q/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "Cilia and flagella are hair-like structures that extend from the cell surface, aiding in movement. Cilia are short and numerous, moving fluid or particles across the cell surface. Flagella are longer and fewer, propelling the cell forward, like in sperm cells.",
          "index": 6,
          "is_paid": true,
          "label": "Cilia and flagella",
          "pdfLink": "https://www.canva.com/design/DAGE1WMgILE/_seM_lU7aF0fMOIZGBUW_g/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "The centrosome is an organelle near the nucleus that organizes microtubules and helps in cell division. It contains two centrioles, which are cylindrical structures made of microtubules that play a key role in forming the spindle fibers during cell division.",
          "index": 6,
          "is_paid": true,
          "label": "Centrosome and centriole",
          "pdfLink": "https://www.canva.com/design/DAGE0uQV3hA/hDWtNyJm_cR36WUT7UV24Q/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "The nucleus is the control center of the cell, containing the cell's DNA. It regulates gene expression, cell growth, and reproduction. The nucleus is surrounded by a nuclear membrane and contains the nucleolus, where ribosomes are made.",
          "index": 6,
          "is_paid": true,
          "label": "Nucleus",
          "pdfLink": "https://www.canva.com/design/DAGE1WMgILE/_seM_lU7aF0fMOIZGBUW_g/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "Microbodies are small, membrane-bound organelles in cells that carry out specific metabolic functions. The most common types are peroxisomes, which break down fatty acids and detoxify harmful substances, and glyoxysomes, found in plants, which convert fats into sugars during seed germination.",
          "index": 6,
          "is_paid": true,
          "label": "Microbodies",
          "pdfLink": "https://www.canva.com/design/DAGE0uQV3hA/hDWtNyJm_cR36WUT7UV24Q/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "The cell cycle is the sequence of events that a cell goes through to grow and divide. It consists of two main phases: Interphase (where the cell grows, duplicates its DNA, and prepares for division) and Mitosis (where the cell divides into two daughter cells). Interphase is further divided into G1, S, and G2 phases.",
          "index": 7,
          "is_paid": true,
          "label": "Cell cycle",
          "pdfLink": "https://www.canva.com/design/DAGE1nRmNbk/Zx50NkuaCosf4AGu2AHtbQ/view?embed",
          "totalTimeInMin": "120",
          "type": 7
        },
        {
          "description": "The M-phase, or mitotic phase, is the part of the cell cycle where the cell divides. It includes two main processes: mitosis (division of the nucleus) and cytokinesis (division of the cytoplasm), resulting in two daughter cells with identical genetic material.",
          "index": 7,
          "is_paid": true,
          "label": "M - phase",
          "pdfLink": "https://www.canva.com/design/DAGE63mJygE/L_bJ4250ozPdv6xbkrZjCg/view?embed",
          "totalTimeInMin": "120",
          "type": 7
        },
        {
          "description": "Meiosis is a type of cell division that reduces the chromosome number by half, resulting in four genetically unique daughter cells. It occurs in two stages, Meiosis I and Meiosis II, and is essential for sexual reproduction, producing gametes (sperm and eggs) in animals and spores in plants.",
          "index": 7,
          "is_paid": true,
          "label": "Meiosis",
          "pdfLink": "https://www.canva.com/design/DAGE7H3fbxU/jR5EMC_OtGLSjYJSCrEUcg/view?embed",
          "totalTimeInMin": "120",
          "type": 7
        },
        {
          "description": "Photosynthesis in higher plants is the process where plants use sunlight, carbon dioxide, and water to produce glucose (a form of sugar) and oxygen. The sunlight is absorbed by chlorophyll in the leaves, which helps convert these ingredients into food for the plant.",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGE7Skpyb4/rOKmkHo_JfG3-BicRGAlmw/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Photosynthesis in higher plants involves two main stages: the light reactions and the Calvin cycle. In the light reactions, chlorophyll absorbs sunlight, which energizes electrons that move through the electron transport chain.",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGE7vxtS9A/FCS-lnwx4Mt4BcgD5LFh6g/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "The Chemiosmotic Hypothesis explains how plants produce ATP during photosynthesis. It suggests that as electrons move through the electron transport chain in the chloroplast, they pump protons (H⁺ ions) across the thylakoid membrane, creating a proton gradient.",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGB0peYlVY/3C4m0Jiy0PyE28_jc2U1gg/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "When protons flow back across the membrane through ATP synthase, their energy is used to generate ATP, which powers the plant's life processes. This process is key to converting sunlight into usable energy for the plant.",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGB6v2JIUw/bZRVBescGeqkhOLVhoUl0g/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "The Calvin cycle is like the plant’s food factory. It takes the energy from ATP and NADPH (made in the light reactions) and uses it to turn carbon dioxide into glucose, a sugar that plants use for energy and growth. This cycle happens in the chloroplasts, and it doesn’t need light, so it can keep going even when the sun isn’t shining.",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGE7lnmBmI/G3kq3JgcHzFfy7iXdrxA-A/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "The C4 pathway is a special mechanism in some plants, like maize and sugarcane, that helps them efficiently fix carbon dioxide even in hot and dry conditions. In this pathway, CO₂ is first captured in the mesophyll cells and converted into a 4-carbon compound (hence the name C4).",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGE7qjll_4/7Qy3DaiXuwb2FgvzTgjUCw/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Photosynthesis is affected by light intensity, carbon dioxide levels, temperature, water, and chlorophyll health. Higher light and CO₂ levels speed up the process, while optimal temperature and sufficient water are essential. Healthy chlorophyll is crucial for absorbing light, making all these factors vital for efficient photosynthesis.",
          "index": 8,
          "is_paid": true,
          "label": "Photosynthesis ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGFOFJz2Q4/2I0ed8jXF3z8QslOVqh_Tw/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Respiration in plants is the process where they convert glucose into energy. Unlike photosynthesis, respiration occurs all the time, day and night. During respiration, plants take in oxygen and break down glucose to release carbon dioxide, water, and energy. This energy is used for various activities like growth and repair.",
          "index": 9,
          "is_paid": true,
          "label": "Basic information",
          "pdfLink": "https://www.canva.com/design/DAGFPkNqHic/OVQaqZHzPe5mChtOxyM6-A/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Yes, plants 'breathe,' but not like humans. They take in oxygen and release carbon dioxide through tiny pores called stomata, mostly at night. During the day, plants also take in carbon dioxide for photosynthesis, releasing oxygen as a by-product.",
          "index": 9,
          "is_paid": true,
          "label": "Do plants breathe?",
          "pdfLink": "https://www.canva.com/design/DAGFPqmX3QU/qddM4nrDsGr2EBiqhLv9zQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Glycolysis is the process where glucose is broken down into two molecules of pyruvate in the cell's cytoplasm. It generates a small amount of energy, producing 2 ATP and 2 NADH, and occurs without the need for oxygen. This step is essential for energy production in both aerobic and anaerobic respiration.",
          "index": 9,
          "is_paid": true,
          "label": "Glycolysis",
          "pdfLink": "https://www.canva.com/design/DAGFP1PIGYg/BwN_jK5B8wWKtbj3spF4Ig/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Fermentation is a process where cells produce energy without oxygen. It occurs after glycolysis when oxygen is absent or low. In fermentation, pyruvate is converted into products like alcohol or lactic acid, depending on the organism.",
          "index": 9,
          "is_paid": true,
          "label": "Fermentation",
          "pdfLink": "https://www.canva.com/design/DAGFP0V8QA8/6VPTgXdk8ii6Z9I7RGrycg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Aerobic respiration in plants is the process where glucose is broken down with oxygen to produce energy, carbon dioxide, and water. This happens in the mitochondria and generates a lot of ATP, providing energy for the plant's growth and functions.",
          "index": 9,
          "is_paid": true,
          "label": "Aerobic respiration",
          "pdfLink": "https://www.canva.com/design/DAGFPxtFkWc/v2RB6MVLcCi8ZiWz5F2LGA/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The Electron Transport System (ETS) is the final stage of cellular respiration, where electrons from NADH and FADH₂ are passed through protein complexes in the mitochondria, creating a proton gradient. This gradient drives ATP production through a process called oxidative phosphorylation.",
          "index": 9,
          "is_paid": true,
          "label": "ETS",
          "pdfLink": "https://www.canva.com/design/DAGFQISlKms/t2q8m93hg0KGaClstx43Jw/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The respiratory balance sheet shows that one glucose molecule produces about 38 ATP in aerobic respiration: 2 ATP from glycolysis, 2 ATP from the Krebs cycle, and around 34 ATP from the electron transport chain. This total may vary slightly depending on cell efficiency.",
          "index": 9,
          "is_paid": true,
          "label": "The respiratory balance sheet",
          "pdfLink": "https://www.canva.com/design/DAGFQJRpfRc/huNWid38dvb0GPyDdwefUQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The amphibolic pathway is a metabolic route that works in both breaking down and building up molecules. The Krebs cycle is an example, playing a role in energy production and providing building blocks for synthesis.",
          "index": 9,
          "is_paid": true,
          "label": "Amphibolic Pathway",
          "pdfLink": "https://www.canva.com/design/DAGFQLdBWJE/GBoz10QoXOJ7I4m-A_Uohg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Plant growth and development include cell division, elongation, and differentiation, leading to the formation of organs like leaves and flowers, guided by hormones and environmental factors throughout the plant's life cycle.",
          "index": 10,
          "is_paid": true,
          "label": "Basic information",
          "pdfLink": "https://www.canva.com/design/DAGO5aDp1OI/vZdNYCxdwph3ds6wl0-SnQ/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Growth rate refers to the speed at which a plant or organism increases in size over time, typically measured by changes in height, biomass, or cell number.",
          "index": 10,
          "is_paid": true,
          "label": "Growth rate",
          "pdfLink": "https://www.canva.com/design/DAGFSpoobTE/z-4avAokWlvK8-sxmBuSTw/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Differentiation is the process where cells develop specialized functions and forms, such as becoming a leaf or root cell. Dedifferentiation occurs when specialized cells revert to a more primitive or less specialized state, gaining the ability to divide and form new types of cells. Redifferentiation is when dedifferentiated cells specialize again, often forming new tissues or organs different from their original type.",
          "index": 10,
          "is_paid": true,
          "label": "DIFFERENTIATION, DEDIFFERENTIATION AND REDIFFERENTIATION",
          "pdfLink": "https://www.canva.com/design/DAGFUu_kCQA/CzAyeIglB2n2LHD1smYx6w/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Development in plants refers to the overall process by which a plant progresses through its life cycle, from seed germination to maturity, including the formation of organs like leaves, flowers, and fruits. It involves growth, differentiation, and the coordinated action of hormones and environmental factors.",
          "index": 10,
          "is_paid": true,
          "label": "Development",
          "pdfLink": "https://www.canva.com/design/DAGFUghGCz4/s0OdkE8TXXt-_q2gzFzImg/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Plant growth regulators are chemicals that influence various aspects of a plant's growth and development. They include hormones like auxins, gibberellins, cytokinins, ethylene, and abscisic acid, each playing specific roles such as promoting cell division, elongation, flowering, fruit ripening, and stress responses.",
          "index": 10,
          "is_paid": true,
          "label": "Plant Growth and regulators",
          "pdfLink": "https://www.canva.com/design/DAGFUh3iM6A/X5BImM4WOVF5XeBOeCZjSQ/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Cytokinins are a group of plant hormones that promote cell division and growth, delay aging in leaves, and work in coordination with auxins to regulate various aspects of plant development, including shoot and root growth. They are essential for balancing growth between different parts of the plant.",
          "index": 10,
          "is_paid": true,
          "label": "Cytokinin",
          "pdfLink": "https://www.canva.com/design/DAGFZuGxB84/1cIfg6t8I1r7kGilGyxCcw/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Ethylene is a plant hormone that regulates processes like fruit ripening, leaf abscission, and flower wilting. It acts as a signaling molecule, helping plants respond to stress and environmental changes, and is unique because it's a gas at room temperature.",
          "index": 10,
          "is_paid": true,
          "label": "Ethylene",
          "pdfLink": "https://www.canva.com/design/DAGFZvHgLME/huZ1uL8TaQmRHC89VXxMpQ/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Abscisic acid (ABA) is a plant hormone that primarily helps plants respond to stress, such as drought. It induces stomatal closure to reduce water loss and plays a key role in seed dormancy, ensuring seeds only germinate under favorable conditions.",
          "index": 10,
          "is_paid": true,
          "label": "Abscisic acid",
          "pdfLink": "https://www.canva.com/design/DAGFZhQ-fgA/XYDM6kcGwYhWFhyGhLdn2Q/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Sexual reproduction in flowering plants involves pollination, where pollen reaches the stigma, followed by fertilization as the male gamete fuses with the female egg. This leads to the formation of a zygote, developing into a seed, while the ovary becomes a fruit.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - A)",
          "pdfLink": "https://www.canva.com/design/DAGFalwzBFY/NMm9uTccr9y-N156sHozYw/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Pollen grains are tiny, often spherical structures produced in the anthers of flowers. They contain the male gametes (sperm cells) necessary for fertilization in plants. Pollen grains are designed to be carried by wind, water, or pollinators like insects to reach the stigma of a flower for successful reproduction.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - B)",
          "pdfLink": "https://www.canva.com/design/DAGFxyAX_Dk/0vUWtvYfWrFdDr2KxU3YLg/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Pollination is the process of transferring pollen grains from the anther (male part) of a flower to the stigma (female part). This transfer can occur through wind, water, or pollinators like bees. Successful pollination is essential for fertilization and the production of seeds and fruits in flowering plants.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - C)",
          "pdfLink": "https://www.canva.com/design/DAGFyQaLzRo/9qwMHLwTLIFGek6CdHPrfQ/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "The pistil is the flower's female part, containing the ovary, where the megasporangium (ovule) forms the embryo sac. The embryo sac holds the egg cell, which, after fertilization, becomes a seed.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - D)",
          "pdfLink": "https://www.canva.com/design/DAGFx_zJRgg/E5Rdic9aFfRgwBd6XLtmLA/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Pollen-pistil interaction is the process by which the pollen grain, after landing on the stigma of a pistil, communicates with the pistil to ensure successful fertilization. The pistil recognizes compatible pollen and allows it to germinate, forming a pollen tube that grows down the style toward the ovule.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - E)",
          "pdfLink": "https://www.canva.com/design/DAGGFnP_OQg/-vrz-5obrrPB03cHaR0VCA/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Pre-fertilization events in flowering plants involve the processes that prepare the male and female reproductive structures for fertilization. These include the development of male gametes (sperm) within pollen grains in the anthers and female gametes (egg cells) within ovules in the ovary.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - F)",
          "pdfLink": "https://www.canva.com/design/DAGFxYQQx7k/Rpulh9pEillPB0Jk4HGc7Q/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Double fertilization is a process in flowering plants where two sperm cells from a pollen grain fertilize two different cells in the ovule. One sperm fertilizes the egg cell, forming a zygote, while the other fertilizes the central cell, forming the endosperm, which nourishes the developing embryo.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - G)",
          "pdfLink": "https://www.canva.com/design/DAGGF7X1lOU/tjnUuoSPm38E7rWl1qWa9Q/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Post-fertilization in flowering plants involves the development of the fertilized egg (zygote) into an embryo, while the fertilized central cell becomes the endosperm, providing nourishment. The ovule matures into a seed, and the surrounding ovary develops into a fruit, protecting the seeds and aiding in their dispersal.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - H)",
          "pdfLink": "https://www.canva.com/design/DAGGF0LHXOE/ppXCX_yTXvjpiqL0NnZP6Q/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "A seed is the mature ovule of a plant, formed after fertilization. It contains the embryo, which is the young plant, and is surrounded by a protective seed coat. The seed also stores nutrients, usually in the form of endosperm, to support the embryo's growth when it starts to germinate.",
          "index": 11,
          "is_paid": true,
          "label": "Sexual reproduction in flowering plants (Part - I)",
          "pdfLink": "https://www.canva.com/design/DAGGF0LHXOE/ppXCX_yTXvjpiqL0NnZP6Q/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "The principles of inheritance and variation, primarily established by Gregor Mendel, explain how traits are passed from parents to offspring and how variations arise. Mendel's laws of inheritance—Law of Segregation and Law of Independent Assortment—describe how alleles (different forms of a gene) segregate and assort during the formation of gametes, ensuring each offspring receives one allele from each parent. Inheritance patterns can follow simple Mendelian genetics or more complex forms such as incomplete dominance, codominance, and multiple alleles. Variations occur due to mutations, genetic recombination during meiosis, and the influence of environmental factors. These principles are foundational for understanding how genetic traits are inherited and how populations evolve over time.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGG6H4q0hE/K1CIcWIOxKL6sfIR5g1G1A/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Mendel's laws of inheritance are like the secret codes that plants and animals use to pass down traits from one generation to the next. Imagine you have a garden full of pea plants, each with different traits like tall or short stems, and yellow or green seeds. Mendel, a curious scientist, decided to play matchmaker with these plants to see how these traits were passed on to their offspring. He discovered that some traits, like being tall, were dominant, meaning they would show up even if the plant also had a gene for being short. Other traits, like being short, were recessive and would only show up if both genes were for shortness. Mendel's first law, the Law of Segregation, says that each plant has two genes for a trait, but only one is passed on to the offspring. It's like flipping a coin to decide which gene gets passed down. His second law, the Law of Independent Assortment, is like shuffling a deck of cards. It says that the gene for one trait, like stem height, is passed down independently of the gene for another trait, like seed color. So, each combination is like a new hand in a game of cards, leading to endless possibilities. Mendel's discoveries were groundbreaking because they revealed the hidden patterns behind how traits are inherited, laying the foundation for modern genetics. So, next time you see a tall plant with green seeds, you can thank Mendel for cracking the code!",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGG8Cwlygc/DxREbJ5-aGgzr3Jj2loTDA/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Inheritance of genes is like passing down secret recipes from one generation to the next in a family. Imagine each gene as a special recipe card that holds the instructions for making a certain trait, like eye color, hair type, or even how tall someone might grow. These recipe cards are stored safely in the DNA, which is like a giant cookbook inside every cell of our body. When parents have children, they each pass along one recipe card for every trait. This is why you might have your mother's curly hair but your father's brown eyes. It’s as if the parents are mixing and matching these recipe cards to create a unique version of you! Sometimes, the recipes are straightforward, like if both parents pass down the same card for brown eyes, you’ll have brown eyes too. But other times, the recipes can be more complicated. For example, if one parent gives you a card for brown eyes and the other for blue, the brown recipe is usually stronger (dominant) and takes over, so you end up with brown eyes. But there are exceptions and surprises in this inheritance game. Some traits can hide in the background for generations (recessive), waiting for the right combination of recipe cards to show up. This intricate process of gene inheritance is what makes every individual so unique, yet still connected to their family tree. So, when you look in the mirror, you’re seeing a blend of your ancestors' secret recipes brought together in a brand-new way!",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGG8T3x2v0/DGEC937SdtJNhZYPZ-EzRw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Law of Dominance: The Law of Dominance is like having a king and a prince in a kingdom, where the king always rules and the prince steps back. In genetics, this \"king\" is the dominant gene, and the \"prince\" is the recessive gene. When an organism has two different genes for a trait, like one for tallness and one for shortness, the dominant gene (the king) will always be the one that shows up in the organism. So, if a plant has one gene for tallness (dominant) and one for shortness (recessive), it will grow tall because the dominant gene takes charge. The recessive gene only shows its effect if there’s no dominant gene around—like if the plant gets two recessive genes for shortness from both parents.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGHIQTrDT8/SqXFlnbwZoOuLMUP0vrdww/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Law of Segregation: The Law of Segregation is like dealing cards in a game. Imagine each parent has two cards (genes) for each trait. When it’s time to pass these cards to their children, each parent randomly hands over just one card for each trait. This means that the genes separate (or segregate) during reproduction, so each child gets one gene from each parent. It’s like shuffling a deck and dealing out cards—each combination is different, which is why siblings can have different traits even though they come from the same parents. For example, one child might inherit a gene for brown eyes from their mother and a gene for blue eyes from their father, leading to a mix of possibilities depending on which gene is dominant.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGHI8EQe_Q/MMpQASQEa500b78HCyeoVg/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Together, these laws explain how traits are passed down through generations, with dominant genes often taking the spotlight and the random segregation of genes adding a layer of diversity in how traits are inherited.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGHNYAfM0Q/MkUxfnUZE7oyH9oRN1jbcw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Incomplete Dominance: Incomplete dominance is like mixing two paint colors together to create a new shade. In this genetic scenario, neither gene is completely dominant over the other. Instead of one gene overshadowing the other (like in the Law of Dominance), both genes blend their effects, creating a trait that is somewhere in between. For example, imagine you have a red flower and a white flower, and you cross them. If the red gene and the white gene show incomplete dominance, the resulting flower won’t be red or white. Instead, it will be pink—a blend of the two colors. This happens because neither the red nor the white gene is strong enough to completely hide the other, so they mix together to create a new, intermediate trait. Incomplete dominance is like making a compromise where both genes contribute equally, resulting in a unique outcome that’s a mixture of the parent traits, rather than one completely dominating the other.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGHOadnNWE/io7LiohI4cCXKcqTuGGoyw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Co-dominance is like two team captains sharing the spotlight on the field—they both show their strengths without overshadowing each other. In genetics, this means that when two different genes for a trait are inherited, both genes are expressed in the offspring. For instance, if one parent has a gene for type A blood and the other has a gene for type B blood, the offspring can have type AB blood, showcasing both traits equally. Unlike incomplete dominance, where traits blend together, co-dominance allows both traits to stand out distinctly. It’s as if the offspring are displaying both parents' colors side by side instead of mixing them, highlighting the power of each gene without one dominating the other.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - H )",
          "pdfLink": "https://www.canva.com/design/DAGHUiw6GR8/6uP_sMt655R7KcgOundrag/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Dihybrid inheritance, which involves two traits at the same time, is like a two-dimensional chessboard where each square represents a combination of traits. When considering two genes, each with two alleles (different versions), the possible combinations of traits can become quite complex. For example, let’s say we’re looking at pea plants again, where one gene determines seed shape (round or wrinkled) and another determines seed color (yellow or green). Each parent plant can produce gametes (reproductive cells) with different combinations of these alleles. When these gametes combine during fertilization, the resulting offspring can exhibit a variety of combinations of traits. This is often illustrated using a Punnett square, where all the possible combinations of alleles from both parents are mapped out, allowing us to predict the ratios of different trait combinations in the offspring. Dihybrid inheritance showcases the diversity of traits that can result from the combination of two different genes, leading to offspring with various combinations of features that can be both fascinating and surprising.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - I )",
          "pdfLink": "https://www.canva.com/design/DAGHf4w2nq4/f6qpXOLaJCt9fvh529dfXg/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "The concept of sex-linked inheritance can be compared to a game of tag where only certain players can be tagged. In this case, the ‘tag’ is a gene that’s located on one of the sex chromosomes (X or Y). In humans, females typically have two X chromosomes (XX), while males have one X and one Y chromosome (XY). When a gene that determines a trait is located on the X chromosome, it is considered sex-linked. Because females have two X chromosomes, they can inherit two different versions of the gene (alleles), while males, with only one X chromosome, have only one version. This often leads to unique inheritance patterns. For example, color blindness is a trait that is linked to the X chromosome. A color-blind male (XY) will show the trait because he has only one X chromosome. However, a color-blind female (XX) would need to inherit two copies of the color-blind gene—one from each parent—to express the trait. This creates interesting dynamics in how traits are passed down, as males are more likely to express X-linked traits while females can be carriers without showing the trait themselves. Sex-linked inheritance highlights the importance of chromosomes in determining traits and can lead to fascinating patterns of inheritance across generations.",
          "index": 12,
          "is_paid": true,
          "label": "Principles of Inheritance and Variations ( Part - J )",
          "pdfLink": "https://www.canva.com/design/DAGHf6hUOhk/uYRFpw9h_gykV_34G0gZzw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "The molecular basis of inheritance refers to how genetic information is stored, transmitted, and expressed within living organisms at the molecular level. This process is primarily governed by DNA (deoxyribonucleic acid), which carries the genetic code in its sequence of nucleotides. DNA is organized into chromosomes, and during cell division, it replicates to ensure each new cell receives an identical copy. The sequence of nucleotides in DNA determines the structure of proteins, which are essential for all cellular functions. The central dogma of molecular biology describes this flow of genetic information: DNA is transcribed into RNA (ribonucleic acid), which is then translated into proteins. These proteins are responsible for the traits and functions of an organism, making DNA the fundamental blueprint for inheritance.",
          "index": 13,
          "is_paid": true,
          "label": "Basic information ",
          "pdfLink": "https://www.canva.com/design/DAGJJQ9-aAI/EnLS8NBpruB6h5ugm5n5bQ/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The DNA molecule is a long, double-stranded structure made up of smaller units called nucleotides, forming a polynucleotide chain. Each nucleotide consists of three components: a phosphate group, a deoxyribose sugar, and a nitrogenous base. The nitrogenous bases are of two types—purines (adenine and guanine) and pyrimidines (cytosine and thymine). The nucleotides are linked together by covalent bonds between the phosphate of one nucleotide and the sugar of the next, creating a sugar-phosphate backbone. The two strands of DNA run in opposite directions (antiparallel) and are held together by hydrogen bonds between complementary bases: adenine pairs with thymine (A-T) through two hydrogen bonds, and guanine pairs with cytosine (G-C) through three hydrogen bonds. This pairing gives the DNA its characteristic double-helix shape, where the bases are like the rungs of a twisted ladder, and the sugar-phosphate backbones form the sides. This structure is crucial for DNA's ability to store and transmit genetic information.",
          "index": 13,
          "is_paid": true,
          "label": "The DNA 🧬 ( Structure of polynucleotide chain)",
          "pdfLink": "https://www.canva.com/design/DAGJNdn0I1g/3uUmHp-Dl2Uk_IArN6D93g/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The packaging of the DNA helix and the search for genetic material are key milestones in understanding genetics. DNA, the carrier of genetic information, is intricately packaged within the cell nucleus. It wraps around histone proteins to form nucleosomes, further coiling to create chromatin, which condenses into chromosomes, allowing the long DNA strands to fit inside the nucleus. The journey to identify DNA as the genetic material began with Griffith's discovery of the transforming principle, where a substance from dead bacteria could transform live bacteria, suggesting it carried genetic information. Avery, MacLeod, and McCarty later identified this transforming principle as DNA, proving its role in heredity. Further, Hershey and Chase's experiments confirmed that DNA, not protein, was the genetic material responsible for transmitting traits, solidifying our understanding of DNA's central role in inheritance and its precise packaging in the cell.",
          "index": 13,
          "is_paid": true,
          "label": "The DNA 🧬 ( Packaging of DNA Helix)",
          "pdfLink": "",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The search for genetic material led to the crucial discovery that DNA is the molecule responsible for inheritance. This was confirmed by experiments like those of Avery, MacLeod, and McCarty, who demonstrated that DNA, not protein, was the transforming principle capable of transferring genetic traits. Further validation came from the Hershey-Chase experiment, where they showed that DNA, not protein, carried genetic information in viruses. DNA's role as the genetic material is supported by its properties: it can store vast amounts of information, replicate accurately during cell division, undergo mutation for evolution, and express information in the form of proteins, which are essential for cellular functions. These properties make DNA the perfect molecule for carrying and passing on the genetic blueprint of life.",
          "index": 13,
          "is_paid": true,
          "label": "The search 🔍 for genetic material ( Transforming Principle , Biochemical Characteristics of transforming principle)",
          "pdfLink": "https://www.canva.com/design/DAGJYa3BPiY/7qCFm5EDkh9hCSW9gHUlzA/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The concept of the RNA world hypothesizes that RNA was the original molecule of life, capable of storing genetic information and catalyzing chemical reactions before the evolution of DNA and proteins. Over time, DNA took over as the primary genetic material due to its stability, while proteins became the main catalysts. The process of DNA replication is essential for passing genetic information to the next generation, ensuring that each new cell receives an exact copy of the DNA. This process was experimentally proven by Meselson and Stahl, who demonstrated that DNA replication is semi-conservative, meaning each new DNA molecule consists of one old strand and one newly synthesized strand. The replication machinery is complex, involving several enzymes: DNA helicase unwinds the double helix, DNA polymerase synthesizes the new strands by adding nucleotides, and ligase seals the gaps between fragments on the lagging strand. These enzymes work together to accurately replicate the DNA, ensuring the faithful transmission of genetic information.",
          "index": 13,
          "is_paid": true,
          "label": "RNA world , Replication , Replication ( The experimental proof ) , Replication ( The machinery and the enzymes )",
          "pdfLink": "https://www.canva.com/design/DAGJZCSbdK0/JGaV_V9CUMhzcw6C11Sepw/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Transcription is the process by which the genetic information encoded in DNA is copied into messenger RNA (mRNA), which then carries this information to the ribosomes for protein synthesis. The region of DNA that is transcribed is known as the transcription unit, which typically includes three key components: a promoter, a structural gene, and a terminator. The promoter is the sequence where RNA polymerase, the enzyme responsible for transcription, binds to initiate the process. The structural gene is the part of the DNA that contains the actual code for the protein to be produced. Finally, the terminator signals the end of transcription. Within the transcription unit, genes can be either coding (producing mRNA that translates into a protein) or non-coding (involved in regulatory functions). This entire process ensures that the genetic instructions from DNA are accurately transferred to RNA, enabling the synthesis of proteins necessary for cellular functions.",
          "index": 13,
          "is_paid": true,
          "label": "Transcription, Transcription unit , Transcription unit and the genes",
          "pdfLink": "https://www.canva.com/design/DAGBiheAaZY/ARddE10U_Y4kt8qISu2zpg/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The transcription unit is a segment of DNA that is transcribed into RNA, consisting of a promoter, the coding sequence (gene), and a terminator. The gene within the transcription unit contains the actual instructions for synthesizing RNA, which will then be used to produce proteins or perform other functions. There are three main types of RNA produced during transcription: messenger RNA (mRNA), which carries the genetic code from DNA to the ribosome for protein synthesis; ribosomal RNA (rRNA), which combines with proteins to form ribosomes, the machinery for protein synthesis; and transfer RNA (tRNA), which brings amino acids to the ribosome during translation.During the process of transcription, RNA polymerase binds to the promoter region of the DNA, unwinds the DNA helix, and synthesizes a complementary RNA strand from the DNA template. As the polymerase moves along the gene, it elongates the RNA strand until it reaches the terminator sequence, where transcription stops. The newly formed RNA then undergoes processing, particularly in eukaryotes, before it can function in the cell. This entire process is crucial for translating genetic information from DNA into functional molecules within the cell.",
          "index": 13,
          "is_paid": true,
          "label": "Transcription unit and the gene , Types of RNA and the process of transcription ",
          "pdfLink": "https://www.canva.com/design/DAGBjR0cScQ/ngTnGplgFlRhngmiuj7TiQ/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Initiation factors and termination factors are crucial proteins that play key roles in the process of transcription and translation, ensuring that these processes start and stop correctly.",
          "index": 13,
          "is_paid": true,
          "label": "Initiation factor and Termination factor",
          "pdfLink": "https://www.canva.com/design/DAGBrDrqCrw/PdEhT_Z1pSw4tO9PZsADWA/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The genetic code is the set of rules by which the information encoded in DNA or mRNA is translated into proteins. It is composed of sequences of three nucleotides, called codons, each of which corresponds to a specific amino acid or a stop signal during protein synthesis. The genetic code is nearly universal across all living organisms, highlighting its fundamental role in biology.",
          "index": 13,
          "is_paid": true,
          "label": "Genetic code , Mutations and genetic code , tRNA - the Adaptor molecule",
          "pdfLink": "https://www.canva.com/design/DAGJZtUCyDs/fi3Fs3qZeD7OnULiPAUIFw/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Translation is the process by which the genetic information encoded in mRNA is used to synthesize proteins. During translation, the ribosome reads the sequence of codons on the mRNA and, with the help of tRNA molecules, assembles the corresponding amino acids into a polypeptide chain. Each tRNA brings a specific amino acid to the ribosome, matching its anticodon to the mRNA codon, ensuring that the protein is built according to the genetic instructions. This process occurs in three stages: initiation, elongation, and termination. Once the protein is synthesized, it folds into its functional form, ready to perform its role in the cell.",
          "index": 13,
          "is_paid": true,
          "label": "Translation , Regulation of gene expression , The Lac operon ",
          "pdfLink": "https://www.canva.com/design/DAGJnh3jm84/YDcw6nTytqI3uGftzSUO3Q/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "",
          "index": 13,
          "is_paid": true,
          "label": "",
          "pdfLink": "",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The Human Genome Project (HGP) was a groundbreaking international research initiative aimed at mapping and understanding all the genes of the human species. Launched in 1990 and completed in 2003, the primary goals of the HGP were to sequence the entire human genome, identify all the genes it contains, and understand their functions. The project revealed that the human genome consists of approximately 3 billion base pairs and about 20,000-25,000 genes, a number surprisingly smaller than expected. One of the most fascinating features uncovered was that while humans share 99.9% of their DNA, the tiny 0.1% variation contributes to individual uniqueness. The applications of the HGP are vast, including advances in personalized medicine, where treatments can be tailored to an individual's genetic makeup, as well as better understanding genetic diseases and human evolution. However, the future challenges are significant, ranging from ethical concerns about genetic privacy and discrimination to the need for further research to fully understand the complex interactions between genes and the environment. The HGP has not only revolutionized genetics but also opened up new frontiers in biology, medicine, and biotechnology.",
          "index": 13,
          "is_paid": true,
          "label": "Human Genome Project , Goals of HGP ,  Salient features of Human Genome , Applications and future challenges",
          "pdfLink": "https://www.canva.com/design/DAGJrTcYM90/8_gqQSi52V9Jqibcf7ghBw/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "DNA fingerprinting, also known as DNA profiling, is a powerful technique used to identify individuals based on their unique genetic makeup. This method analyzes specific regions of DNA that vary greatly between people, known as variable number tandem repeats (VNTRs) or short tandem repeats (STRs). Because these sequences are highly variable, even between closely related individuals, DNA fingerprinting can provide a precise identification.",
          "index": 13,
          "is_paid": true,
          "label": "DNA Fingerprinting ",
          "pdfLink": "https://www.canva.com/design/DAGJr3gyK8Y/0iBxpruuoYTuqP8I3cbVNQ/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Microbes play a crucial role in human welfare, particularly in the production of various household products that are essential in our daily lives. In the kitchen, microbes like Lactobacillus are used in the fermentation process to produce curd from milk. These bacteria convert lactose into lactic acid, which gives curd its texture and flavor. Similarly, yeast (Saccharomyces cerevisiae) is employed in baking and brewing; in bread-making, yeast ferments sugars to produce carbon dioxide, which causes the dough to rise and gives bread its soft, airy texture. In brewing, the same yeast ferments sugars in grains to produce alcohol and carbon dioxide, essential for beverages like beer and wine.",
          "index": 14,
          "is_paid": true,
          "label": "Microbes in household products",
          "pdfLink": "https://www.canva.com/design/DAGI7sUm1xo/zkoDlXndqRqCUyMTYuOGfg/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "Microbes are invaluable in the production of industrial products and in the treatment of sewage, playing essential roles in both processes. In industrial applications, microbes are used to produce a wide range of products, including antibiotics, enzymes, and biofuels. For example, the bacterium Streptomyces is responsible for producing antibiotics like streptomycin, which are vital in treating bacterial infections. Enzymes produced by microbes, such as amylases and proteases, are used in industries like textiles, detergents, and food processing to enhance efficiency and product quality. Additionally, yeast and bacteria are employed in the fermentation industry to produce alcohol, organic acids, and other valuable chemicals.",
          "index": 14,
          "is_paid": true,
          "label": "Microbes in industrial products",
          "pdfLink": "https://www.canva.com/design/DAGJAZyVEoY/pRimHA-zFCQoiaqUPwbzmw/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "Biogas is a renewable source of energy produced through the microbial degradation of organic matter in the absence of oxygen, a process called anaerobic digestion. Various types of bacteria, including methanogens, play a crucial role in breaking down complex organic materials like agricultural waste, animal manure, and sewage into simpler compounds. The final product is a mixture of gases, primarily methane (CH₄) and carbon dioxide (CO₂), which can be used as a fuel for cooking, heating, and electricity generation. The by-products of this process, known as digestate, can also be used as a nutrient-rich fertilizer.",
          "index": 14,
          "is_paid": true,
          "label": "Microbes in Production of Biogas",
          "pdfLink": "https://www.canva.com/design/DAGJApjnsHo/DBbzCGt4oeKRB6WQ2xwfqw/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "Imagine having the power to alter the very building blocks of life to create something new, improve the world, or even solve problems that seemed impossible before. This is the essence of biotechnology—a field where biology meets technology, enabling scientists to manipulate DNA, cells, and biological processes to achieve groundbreaking results.",
          "index": 15,
          "is_paid": true,
          "label": "Principles and processes",
          "pdfLink": "https://www.canva.com/design/DAGHs0WfoU/oTrGj-ACoF5--QlSP_M0ww/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Recombinant DNA technology, a cornerstone of modern biotechnology, involves the manipulation of DNA to create new genetic combinations. This process relies on several key tools that work together to achieve precise genetic modification. Restriction enzymes, often referred to as molecular scissors, cut DNA at specific sequences, allowing scientists to isolate and extract the desired genes. Once the DNA is cut, DNA ligase, an enzyme that acts like glue, is used to join these DNA fragments together. To introduce the gene of interest into a host organism, vectors—such as plasmids or viral DNA—are employed. These vectors carry the recombinant DNA into host cells, typically bacteria or yeast, where the DNA is replicated and expressed. Additionally, the polymerase chain reaction (PCR) is a crucial tool in this technology, enabling the amplification of specific DNA sequences to generate millions of copies from a small sample. These tools collectively make recombinant DNA technology a powerful method for genetic engineering, enabling advancements in medicine, agriculture, and research.",
          "index": 15,
          "is_paid": true,
          "label": "Tools of recombinant DNA technology",
          "pdfLink": "https://www.canva.com/design/DAGHtAhi0fU/1gyKGYfmE9qI19BmjNRxqw/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Cloning vectors and competent host cells are crucial components in the process of genetic engineering, particularly in the creation and manipulation of recombinant DNA. Cloning vectors are specialized DNA molecules, such as plasmids, bacteriophages, or cosmids, that are designed to carry foreign DNA into a host cell. These vectors contain essential features like an origin of replication, which allows them to replicate independently within the host, and selectable markers, which help identify cells that have successfully taken up the vector. They also often include multiple cloning sites, regions with numerous restriction enzyme recognition sites, facilitating the insertion of the gene of interest.",
          "index": 15,
          "is_paid": true,
          "label": "Cloning vectors, Competent Host (For transformation with recombinant DNA)",
          "pdfLink": "https://www.canva.com/design/DAGHtaNV4mU/8Hch8T-pmddsUYMRmo1Qng/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Recombinant DNA technology is a fascinating journey through the intricate world of genetics, where scientists play the role of molecular architects. The process begins with the careful isolation of genetic material, extracting DNA from cells much like a treasure hunter uncovering hidden gems. This DNA, holding the blueprint of life, is then skillfully cut into specific fragments using restriction enzymes, akin to a sculptor chiseling a block of marble to reveal a masterpiece. The next step involves selecting a suitable cloning vector, a specialized carrier like a plasmid, which is prepared to receive the newly sculpted gene. Using DNA ligase, often referred to as molecular glue, the gene is meticulously inserted into the vector, creating a unique combination of DNA—a true recombinant creation.",
          "index": 15,
          "is_paid": true,
          "label": "Processes of recombinant DNA technology",
          "pdfLink": "https://www.canva.com/design/DAGHuOB_Ncg/X0CGQKOX-gRf6WEZQ5DNpw/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Biotechnology has revolutionized agriculture, offering innovative solutions to some of the most pressing challenges faced by farmers worldwide. Through the application of genetic engineering, biotechnology has enabled the development of crops with enhanced traits, leading to improved productivity, sustainability, and food security.",
          "index": 16,
          "is_paid": true,
          "label": "Biotechnological applications in agriculture",
          "pdfLink": "https://www.canva.com/design/DAGHuOB_Ncg/X0CGQKOX-gRf6WEZQ5DNpw/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Biotechnology has profoundly impacted the field of medicine, leading to groundbreaking advancements that have transformed the way we diagnose, treat, and prevent diseases. These applications have not only improved patient outcomes but also opened new avenues for personalized medicine and innovative therapies.",
          "index": 16,
          "is_paid": true,
          "label": "Biotechnological applications in medicine",
          "pdfLink": "https://www.canva.com/design/DAGHuOB_Ncg/X0CGQKOX-gRf6WEZQ5DNpw/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Transgenic animals are organisms that have had foreign genes deliberately inserted into their genome using biotechnological techniques. These animals are created to express new traits or produce biological products that can be useful in research, medicine, agriculture, and industry. The introduction of foreign DNA into an animal’s genome allows scientists to study the effects of specific genes, model human diseases, and produce valuable proteins and antibodies.",
          "index": 16,
          "is_paid": true,
          "label": "Transgenic animals",
          "pdfLink": "https://www.canva.com/design/DAGH_SfmWMA/YOzKhIT3Z7-USlisXpue8g/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "The creation and use of transgenic animals raise several ethical issues that are widely debated among scientists, ethicists, and the general public. These concerns revolve around the welfare of the animals, the potential impact on the environment, and broader questions about the limits of human intervention in nature.",
          "index": 16,
          "is_paid": true,
          "label": "Ethical issues",
          "pdfLink": "https://www.canva.com/design/DAGH_UgQPlk/BXgQJj-NeJpFPn-K0LwPtA/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Organisms and Population is a fascinating branch of ecology that delves into the intricate relationships between living organisms and their environment, as well as how populations of species interact and thrive within ecosystems. At the core of this study is the understanding that every organism is intricately linked to its surroundings—both the physical aspects like temperature, light, and water, and the biological factors such as predators, prey, and competitors. These interactions are vital as they shape how an organism adapts, survives, and reproduces in its habitat.",
          "index": 17,
          "is_paid": true,
          "label": "Organisms and population ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGIERlCwLo/3OhUlsDHFFgPaO2wRyY-Qg/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Abiotic factors are the non-living elements of the environment that play a pivotal role in shaping the lives of organisms and the ecosystems they inhabit. Imagine a vast desert where the scorching temperature dictates the survival strategies of its inhabitants, from the deep-burrowing scorpions to the water-storing cacti. Temperature is just one of these key abiotic factors, profoundly influencing how organisms grow, reproduce, and even where they can live. Another crucial factor is water—often taken for granted, yet it is the lifeblood of all ecosystems. Whether it’s the vast oceans teeming with marine life or a simple pond in a forest, the availability and quality of water determine the diversity and abundance of life forms.",
          "index": 17,
          "is_paid": true,
          "label": "Organisms and population ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGIE-4vM5k/xPMc6z6g-cs5zx-rcgNBlA/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Abiotic factors, such as temperature, water, light, and soil composition, are non-living elements of an environment that influence the survival and growth of living organisms. These factors can vary widely across different habitats, and organisms have evolved a variety of strategies to cope with these challenges, a process known as adaptation. Adaptation involves changes at the physiological, behavioral, and structural levels that enhance an organism's ability to survive and reproduce in a particular environment. For example, desert plants like cacti have thick, fleshy stems to store water and spines instead of leaves to reduce water loss. Similarly, animals in colder climates might develop thicker fur or layers of fat to insulate against the cold.",
          "index": 17,
          "is_paid": true,
          "label": "Organisms and population ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGIXdU-ZCM/EUwvjzeS99YkcZl2T5jsrA/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Each population has its own characteristics, such as size, density, distribution, and genetic diversity. These characteristics are influenced by factors like birth rates, death rates, immigration, and emigration. For example, a population of deer in a forest may increase in size during periods of abundant food but decrease if resources become scarce or predators are introduced.",
          "index": 17,
          "is_paid": true,
          "label": "Organisms and population ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGIdkTcSUg/A4U5UxRWm5JkqWJifjDsBw/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Population interaction refers to the various ways in which different populations of species interact with each other within an ecosystem. These interactions are essential for the functioning of ecosystems, as they help regulate population sizes, drive evolution, and maintain the balance of ecosystems.",
          "index": 17,
          "is_paid": true,
          "label": "Organisms and population ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGIl4LV0rI/f2pBbaJiSX6s3uEbEE1J5w/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "At its core, an ecosystem is a community of living organisms—plants, animals, and microorganisms—interacting with each other and with their physical environment, which includes air, water, soil, and climate. These interactions create a delicate balance that sustains life and enables ecosystems to thrive.",
          "index": 18,
          "is_paid": true,
          "label": "Ecosystem ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGIt_gHyL0/26EVYsYiirrij5c-Ebj7vQ/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Energy flows through an ecosystem starting with the sun, which provides energy to plants through photosynthesis. These plants, or producers, form the base of the food chain, supplying energy to herbivores (plant-eaters) and, in turn, to carnivores (meat-eaters) and omnivores (those that eat both plants and animals). Decomposers, like fungi and bacteria, break down dead organisms, returning vital nutrients to the soil, completing the cycle of life.",
          "index": 18,
          "is_paid": true,
          "label": "Ecosystem ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGIt_gHyL0/26EVYsYiirrij5c-Ebj7vQ/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Biodiversity, the vast variety of life on Earth, is the foundation of our planet's resilience and sustainability. It encompasses everything from the smallest microorganisms to the largest mammals, as well as the ecosystems they inhabit and the genetic diversity within species. This richness of life is crucial for the stability of ecosystems, providing essential services like pollination, climate regulation, and nutrient cycling, which are vital for human survival. However, biodiversity is under threat from human activities such as deforestation, pollution, and climate change, leading to alarming rates of species extinction. Conservation efforts are essential to protect and restore biodiversity, ensuring that ecosystems remain balanced and resilient. This involves not only preserving habitats and endangered species but also promoting sustainable practices that allow humans and nature to coexist. By conserving biodiversity, we safeguard the natural systems that support life on Earth, securing a healthy and vibrant planet for future generations.",
          "index": 19,
          "is_paid": true,
          "label": "Biodiversity and its conservation ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGI0WSZ5cw/H2_IqV4B_gHa2rM_l-4I2Q/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Biodiversity, the dazzling array of life forms on Earth, is the backbone of healthy ecosystems. It ensures natural balance, supports essential processes like pollination and nutrient cycling, and provides resilience against environmental changes. However, human activities are rapidly diminishing this natural wealth, leading to the extinction of species and the degradation of habitats. Conservation is not just about saving species; it’s about preserving the intricate web of life that sustains us all. By protecting biodiversity, we protect the very foundation of our existence, ensuring that future generations inherit a thriving, life-supporting planet.",
          "index": 19,
          "is_paid": true,
          "label": "Biodiversity and its conservation ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGI3IJnycI/lv516Q2TCXm0a9GWdbtdvA/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        }
      ]
    },
    {
      'icon':'https://cdn-icons-png.flaticon.com/512/8832/8832880.png',
      'label':'Chemistry',
      'is_paid':true,
      'subject_type':[
        {
          'label':'Some basic concepts of chemistry ',
          'type':'1',
        },
        {
          'label':'Structure of atom ',
          'type':'2',
        },
        {
          'label':'Classification of elements and periodicity in properties',
          'type':'3',
        },
        {
          'label':'Chemical bonding and molecular structure ',
          'type':'4',
        },
        {
          'label':'Thermodynamics ',
          'type':'5',
        },
        {
          'label':'Equilibrium ',
          'type':'6',
        },
        {
          'label':'Redox reactions',
          'type':'7',
        },
        {
          'label':'p - block elements ',
          'type':'8',
        },
        {
          'label':'Organic chemistry - Some basic principles and techniques',
          'type':'9',
        },
        {
          'label':'Hydrocarbons ',
          'type':'10',
        },
        {
          'label':'Solutions',
          'type':'11',
        },
        {
          'label':'Electrochemistry ',
          'type':'12',
        },
        {
          'label':'Chemical kinetics ',
          'type':'13',
        },
        {
          'label':'d and f block ',
          'type':'14',
        },
        {
          'label':'p - block elements ',
          'type':'15',
        },
        {
          'label':'Co - ordination compounds',
          'type':'16',
        },
        {
          'label':'Haloalkenes and Haloarenes ',
          'type':'17',
        },
        {
          'label':'Alchol , Phenol and Ether',
          'type':'18',
        },
        {
          'label':'Aldehyde , Ketones and Carboxylic acids',
          'type':'19',
        },
        {
          'label':'Organic compounds containing Nitrogen ',
          'type':'20',
        },
        {
          'label':'Biomolecules ',
          'type':'21',
        },
      ],
      'chapters':[
        {
          "description": "Some Basic Concepts of Chemistry is the foundation of understanding chemistry. This chapter introduces you to the essential ideas and principles that are crucial for exploring the world of chemistry.",
          "index": 1,
          "is_paid": true,
          "label": "Matter and its classification, Law of Chemical combination",
          "pdfLink": "https://www.canva.com/design/DAGOiEZA6Pw/J7oTgA5Rb1j5YujsTprRwg/view?embed",
          "totalTimeInMin": "120",
          "type": 1
        },
        {
          "description": "Atomic and Molecular Masses: Atoms and molecules are tiny, but they have mass. Understanding atomic and molecular masses is essential for measuring substances accurately in chemical reactions.",
          "index": 1,
          "is_paid": true,
          "label": "Atomic and molecular mass",
          "pdfLink": "https://www.canva.com/design/DAGPECG1QQg/WNkLb2UgxWG0JxR2sc0BzA/view?embed",
          "totalTimeInMin": "120",
          "type": 1
        },
        {
          "description": "Mole Concept: The mole is a fundamental concept that allows chemists to count atoms, molecules, or ions in a given sample. It connects the microscopic world of atoms to the macroscopic world we can see and measure.",
          "index": 1,
          "is_paid": true,
          "label": "Mole concept",
          "pdfLink": "https://www.canva.com/design/DAGPEDKtqTw/BJwcpRIhIe8XeyxHf08Vsg/view?embed",
          "totalTimeInMin": "120",
          "type": 1
        },
        {
          "description": "Stoichiometry, limiting reagent, and reactions in solutions are the key players in the fascinating world of chemical reactions, where every atom has a role to play. Stoichiometry is like the blueprint of a reaction, telling us exactly how much of each substance is needed and how much will be produced. It’s the science of balancing equations, ensuring that every atom is accounted for, just like following a recipe to make the perfect dish. But even with the perfect plan, there’s always that one ingredient that runs out first—the limiting reagent. This is the substance that dictates how far the reaction can go, much like running out of flour when baking a cake. The reaction halts when this reagent is used up, no matter how much of the other ingredients are left. Now, imagine all this happening in a solution, where the reactants are dissolved in a solvent, mingling and reacting at a molecular level. The concentration of these solutions plays a critical role, determining how fast and how far the reaction will proceed. Whether it’s a fizzing reaction in your kitchen experiment or a complex process in an industrial lab, understanding these concepts is crucial for predicting and controlling chemical outcomes, making chemistry not just a science, but an art of precision.",
          "index": 1,
          "is_paid": true,
          "label": "Stoichiometry, Limiting reagent, reaction in solutions",
          "pdfLink": "https://www.canva.com/design/DAGPEjIwoHE/HV-pLSgGiu2lpJzvxLBTaA/view?embed",
          "totalTimeInMin": "120",
          "type": 1
        },
        {
          "description": "Imagine every piece of matter around you, from the air you breathe to the chair you sit on, is made up of tiny, invisible building blocks called atoms. These atoms are like mini-universes, each with its own unique structure. At the heart of each atom lies a tiny, dense center called the nucleus, where protons and neutrons reside. This nucleus is like a powerful sun, pulling in tiny, fast-moving particles called electrons that orbit around it, just like planets orbit the sun.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAF-8nw0X2M/FNefzerink_M0Tu8OYPKhg/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "Light isn't just a wave—it’s also made of tiny energy packets called photons. These photons travel at the speed of light and carry energy, depending on the frequency of the light. High-frequency light has energetic photons, while low-frequency light has less energy.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAF-8nw0X2M/FNefzerink_M0Tu8OYPKhg/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "The photoelectric effect is a phenomenon where light, when it hits a metal surface, causes the metal to release electrons. This happens because the light is made of tiny energy packets called photons. When these photons strike the metal, they transfer their energy to the electrons in the metal.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAF-8jwiVe8/TcOWVExk85qvWb1z5zhT9A/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "When electrons in an atom jump between fixed energy levels, they emit or absorb light at specific wavelengths, creating unique lines in an atomic spectrum. These distinct lines, rather than a continuous spread of colors, are strong evidence that electronic energy levels in atoms are quantized, meaning electrons can only exist at specific energy levels, not in between. This quantization is what gives each element its unique spectral fingerprint.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAF_wTJlE7o/0hzmkC_bUpqr-xw6OE0Rxw/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "When an electron drops from a higher energy level to a lower one, it emits light, creating these lines. The hydrogen spectrum is unique and serves as direct evidence of quantized energy levels in atoms. Each line in the spectrum corresponds to a specific transition, making the hydrogen spectrum a key piece of evidence in understanding atomic structure.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGBInL6dVE/cYhJjog19_FTK2eSExccsA/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "The Bohr model describes the hydrogen atom with an electron orbiting a central nucleus in fixed paths called orbits. These orbits represent specific energy levels. The electron can jump between these levels by absorbing or emitting energy, producing the hydrogen atom's unique line spectrum. This model introduced the idea of quantized energy levels and was a key step in understanding atomic structure.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGBIinbBWQ/ojuBtQvQNOsWBP3KTuygHQ/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "The line spectrum of hydrogen consists of distinct lines of color, each representing light of a specific wavelength. These lines are produced when an electron in a hydrogen atom jumps between fixed energy levels. When the electron falls to a lower energy level, it emits a photon of light, and the wavelength of this light corresponds to the energy difference between the levels. This creates the unique pattern of lines seen in hydrogen's spectrum, proving that the atom's energy levels are quantized.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGBI3FF1Xc/b0H3FveNcQJKISr3xZMFjA/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "The Heisenberg Uncertainty Principle states that it's impossible to know both the exact position and exact momentum (speed and direction) of a particle, like an electron, at the same time. The more precisely you know one of these, the less precisely you can know the other. This principle highlights the fundamental limits of measurement in the quantum world and shows that at a very small scale, like that of electrons, there’s always some level of uncertainty in what we can know about their properties.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - H )",
          "pdfLink": "https://www.canva.com/design/DAGBKR83l5g/E3X1uNeL_tEW_Zw7OADayQ/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "The quantum mechanical model of the atom is the most advanced and accurate description of atomic structure. Unlike earlier models, it doesn't define exact paths for electrons around the nucleus. Instead, it uses complex mathematical equations to describe the probability of finding an electron in a particular region around the nucleus. These regions are called orbitals, and each orbital has a specific shape and energy level.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - I )",
          "pdfLink": "https://www.canva.com/design/DAGBKbh5HJE/w6NCtz43rmxpfqPg95cwCg/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "Principal Quantum Number (n): Tells us the energy level of the orbital, like which floor of a building the orbital is on. Hund’s Rule: When filling orbitals of the same energy (like p, d, or f orbitals), electrons fill each orbital singly before pairing up. This is like spreading out in a row of empty seats before sitting next to someone.",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - J )",
          "pdfLink": "https://www.canva.com/design/DAGBKlOG3fs/4ai3qOOIHHsU464qCTJ12A/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "",
          "index": 2,
          "is_paid": true,
          "label": "Structure of atom ( Part - K )",
          "pdfLink": "https://www.canva.com/design/DAGBK5qseDc/PMqcQNG_jy18PHt9yHmoDQ/view?embed",
          "totalTimeInMin": "120",
          "type": 2
        },
        {
          "description": "The \"Classification of Elements and Periodicity in Properties\" chapter in chemistry is like uncovering the secret code that nature uses to organize all the elements. Imagine walking into a library with a chaotic collection of books scattered all around. Then, suddenly, you discover a brilliant system where each book is placed on a specific shelf according to its genre, author, and subject. This is exactly what happened when scientists, led by Dmitri Mendeleev, began to classify elements based on their properties.",
          "index": 3,
          "is_paid": true,
          "label": "Classification of elements and periodicity in properties ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGBPHPjAlQ/X28I2ciOJMHQ9qyK93Ed6w/view?embed",
          "totalTimeInMin": "120",
          "type": 3
        },
        {
          "description": "Elements, which are the building blocks of everything around us, are not random. They follow a predictable pattern when arranged by their atomic numbers, leading to the formation of the Periodic Table—a true masterpiece of science. As you move across the table, you'll notice a fascinating periodicity or repeating trends in properties like atomic size, ionization energy, electronegativity, and more. This periodicity is not just a coincidence; it reveals the underlying principles that govern chemical behavior.",
          "index": 3,
          "is_paid": true,
          "label": "Classification of elements and periodicity in properties ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPIEhn_GM/GerD8a3khmC1yfUC3P5Acw/view?embed",
          "totalTimeInMin": "120",
          "type": 3
        },
        {
          "description": "Chemical bonding and molecular structure are like the glue that holds the universe together. Imagine a giant dance floor where atoms are the dancers, each looking for a partner to connect with. Some are eager to share their energy, while others are more reserved, only willing to bond if they can take something valuable in return.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPIOISvSw/1WKuYBdYnD3bxQz43uw5Ew/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "Chemical bonding and molecular structure are the foundations of all matter, shaping the very essence of everything around us. Atoms, like tiny puzzle pieces, come together through various bonds—ionic, covalent, and metallic—forming the intricate structures that make up the universe. These bonds aren’t just connections; they’re the architects of life, determining the properties and behaviors of elements and compounds.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPIEKni9Y/frbucQc3iAxmCNlMMCtumQ/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "Polarity in chemistry refers to the distribution of electrical charge around atoms, molecules, or chemical bonds. Imagine a tug-of-war between atoms: when they pull equally on the electrons they share, the bond is nonpolar, and the electrons are evenly distributed.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGLP22-S9I/6k5i_hH2MErFQKSY4OaBVQ/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "VSEPR theory, or Valence Shell Electron Pair Repulsion theory, is a model used to predict the shape of molecules. The basic idea is simple: electrons around a central atom arrange themselves as far apart as possible to minimize repulsion.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPINb82OE/MqFxqVg306HZGUEDC93cmA/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "However, VBT has some limitations. It doesn't fully explain the magnetic properties of molecules or the concept of resonance, where more than one valid structure can describe a molecule. Despite these limitations, Valence Bond Theory is essential for understanding how bonds form at a basic level.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPIK7RKn8/QAim_48sVFlPz9afIkZjUA/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "Different types of hybridization (like sp, sp², sp³) correspond to different molecular geometries, such as linear, trigonal planar, and tetrahedral, respectively. Hybridization helps to explain why molecules have the shapes they do.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPILboqkg/e4hzdMwl1iXWZmvZ50MWTQ/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "Molecular Orbital Theory (MOT) is a sophisticated model used to describe the bonding in molecules. Unlike Valence Bond Theory, which focuses on the overlap of individual atomic orbitals, MOT considers electrons in a molecule as being distributed in molecular orbitals that are spread out over the entire molecule.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGPIIj5Vew/bgDxXAkousxVacFz_TNWnQ/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "In these molecules, the bonding is explained using Molecular Orbital Theory. When the two identical atoms come close, their atomic orbitals overlap to form molecular orbitals, creating a perfectly symmetrical distribution of electrons.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - H )",
          "pdfLink": "https://www.canva.com/design/DAGPIIBF05c/EUuZHuc1zkZrVCdZvVIoEQ/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "Hydrogen bonds are responsible for many important properties of substances. For example, they make water molecules stick together, giving water a high boiling point, surface tension, and the ability to dissolve many substances.",
          "index": 4,
          "is_paid": true,
          "label": "Chemical bonding and molecular structure ( Part - I )",
          "pdfLink": "https://www.canva.com/design/DAGPIHx0uhU/JqWrs3-Il8B7tGAnd0fQrg/view?embed",
          "totalTimeInMin": "120",
          "type": 4
        },
        {
          "description": "Thermodynamics is the branch of physics that deals with the study of energy, heat, and their transformations. At its core, thermodynamics is all about understanding how energy moves and changes from one form to another, and how this movement affects matter.",
          "index": 5,
          "is_paid": true,
          "label": "Thermodynamics ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGK6_XlI00/EcXx_WEZGYs_8fZYn01nMg/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "Thermodynamics involves several key terms that are essential for understanding how energy and heat interact in various systems.",
          "index": 5,
          "is_paid": true,
          "label": "Thermodynamics ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGK7fKYZqI/IP0Cj-QAesYor5ruDsH_gw/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "The Second Law of Thermodynamics is like the universe's rulebook for how energy flows and how processes naturally unfold. It tells us that in any energy transfer or transformation, the total entropy—or disorder—of a system and its surroundings always increases over time.",
          "index": 5,
          "is_paid": true,
          "label": "Thermodynamics ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGK82W6xdc/OMr4dZa4E2Fyy06EwkiKtg/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "Gibbs free energy is a key concept in thermodynamics that helps us understand whether a process or reaction will occur spontaneously. It's like a balance sheet for energy—taking into account both the energy available to do work and the energy 'lost' to disorder (entropy).",
          "index": 5,
          "is_paid": true,
          "label": "Thermodynamics ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPITId_AM/i_i9cHrPbbFMdE3IVusIOw/view?embed",
          "totalTimeInMin": "120",
          "type": 5
        },
        {
          "description": "Chemical equilibrium is a fascinating concept in chemistry that occurs when a reversible chemical reaction reaches a point where the forward and reverse reactions happen at the same rate. At this point, the concentrations of the reactants and products remain constant over time, even though both reactions continue to occur.",
          "index": 6,
          "is_paid": true,
          "label": "Chemical equilibrium ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGLICOVHfM/hWttT828w6FmrNWv_p1HJw/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "Chemical equilibrium is like a delicate balance between two competing forces in a chemical reaction. Imagine a tug-of-war where the reactants on one side and the products on the other pull with equal strength, resulting in no net movement. At this point, the reaction doesn’t stop; instead, it reaches a state where the rate of the forward reaction equals the rate of the reverse reaction.",
          "index": 6,
          "is_paid": true,
          "label": "Chemical equilibrium ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPKwB7HSQ/dwH6tZTUyFJVXR5usw2hgg/view?embed",
          "totalTimeInMin": "120",
          "type": 6
        },
        {
          "description": "Redox reactions are like a thrilling exchange of energy in the world of chemistry, where atoms trade electrons in a dynamic give-and-take. Picture it as a dance where one partner (the oxidizing agent) eagerly pulls electrons away, while the other (the reducing agent) willingly hands them over. This transfer of electrons leads to a change in the oxidation states of the atoms involved, sparking a chain reaction that powers everything from rusting iron to the metabolism in your cells. In this process, one substance gets oxidized (loses electrons) while the other gets reduced (gains electrons), creating a powerful interplay that drives countless chemical processes in nature and technology. It's a vibrant, energetic exchange that keeps the wheels of chemistry turning.",
          "index": 7,
          "is_paid": true,
          "label": "Redox reactions",
          "pdfLink": "https://www.canva.com/design/DAGPKwB7HSQ/dwH6tZTUyFJVXR5usw2hgg/view?embed",
          "totalTimeInMin": "120",
          "type": 7
        },
        {
          "description": "Group 13 of the p-block elements is like the intriguing cast of a chemistry show, each element with its own unique personality but sharing a common lineage. Starting with boron, a small yet versatile element, it sets the stage with its non-metallic behavior and is essential in glass and ceramics. As we move down the group, we meet aluminum, the lightweight metal that’s everywhere—from kitchen foil to airplane frames—thanks to its remarkable strength and low density. Gallium adds a touch of drama, melting in your hand and playing a crucial role in electronics. Indium and thallium, the heavier members, round out the group with their own specialized uses in technology and medicine. Together, these elements showcase the diversity and adaptability of the p-block, each contributing uniquely to the material world.",
          "index": 8,
          "is_paid": true,
          "label": "Group - 13",
          "pdfLink": "https://www.canva.com/design/DAGPK93Hh_4/XESGzRzY0tHwLam2HIIFqQ/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Group 14 of the p-block is like a family of versatile all-rounders, each element playing a key role in shaping the modern world. Leading the group is carbon, the backbone of life itself, whose ability to form countless compounds is unmatched, making it the star of organic chemistry and the basis of all living organisms. Silicon follows, famous for its role in technology as the cornerstone of semiconductors, powering everything from computers to smartphones. Germanium, often overshadowed, is a critical player in fiber optics and infrared devices. Tin, known since ancient times, continues to be indispensable in alloys like bronze and in protecting steel from corrosion. Finally, lead, the heaviest in the group, has had a complex history—from plumbing to batteries—while also raising important health concerns. Together, these elements of Group 14 show how one family can influence everything from life on Earth to cutting-edge technology.",
          "index": 8,
          "is_paid": true,
          "label": "Group - 14",
          "pdfLink": "https://www.canva.com/design/DAGPK2oLaCU/6W8OGKpuSfs3yXwXerbOaw/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Organic Chemistry: Some Basic Principles and Techniques is like the foundation course of a grand journey into the world of carbon compounds, where you learn the essential tools and concepts needed to navigate this vast field. This chapter introduces you to the language of organic chemistry, from understanding the unique bonding patterns of carbon to recognizing the different types of organic reactions. You'll delve into the basics of structure, naming conventions, and the key techniques used to study and manipulate organic molecules, such as purification, separation, and identification methods. It’s like being handed a toolkit and a map, equipping you with the skills to explore the diverse and complex chemistry of life and materials. Whether you're figuring out how molecules interact or learning to synthesize new compounds, this chapter lays the groundwork for all that follows in the exciting realm of organic chemistry.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPKz8mtcw/Px2yOcwzur--EycPGGihBg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The classification of organic compounds is like organizing a vast library of carbon-based molecules, each with its own unique story and characteristics. Organic compounds are primarily categorized based on their structure and the types of atoms they contain. The simplest division is into acyclic (open-chain) and cyclic (ring) compounds. Acyclic compounds have straight or branched chains, while cyclic compounds form rings, which can be further divided into alicyclic (non-aromatic) and aromatic compounds.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLDnBE9o/KKNtBph2kuvO6NLvJzWK4g/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Nomenclature of organic compounds is like the naming system in a vast and intricate world, where each molecule gets its own unique identity based on a set of systematic rules. This process involves identifying the main structure of the molecule, which is usually a carbon chain or ring, and then naming it according to the number of carbon atoms and the type of bonds present. Functional groups, which are specific groups of atoms that give molecules their characteristic properties, are then identified and their positions on the carbon chain are indicated using numbers or prefixes.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPLNiYYoQ/aNg3UH8HFbqqKcaiBdUl9g/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Structural isomers differ in how their atoms are connected, resulting in different chemical structures and functions, much like how rearranging the same building blocks can create completely different shapes. On the other hand, stereoisomers have the same connectivity but differ in the three-dimensional arrangement of atoms, leading to variations like geometric and optical isomerism. This concept of isomerism explains how molecules with identical compositions can exhibit unique characteristics, making it a key principle in understanding the diversity and complexity of organic compounds.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPLG4mUWE/j_ejVocaclrlw_u5v1Sj0w/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Fundamental Concepts in Organic Reaction Mechanism is like the blueprint that reveals the inner workings of chemical reactions in organic chemistry. This section introduces you to the core ideas that explain how and why organic molecules undergo specific transformations. It covers the movement of electrons, represented by curved arrows, which is essential for understanding how bonds break and form during reactions. You'll also learn about reaction intermediates like carbocations, free radicals, and carbanions, which are temporary species that play crucial roles in the pathways of reactions.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPLOrpSqU/3R1xQkTGXvZE13V-nq7uXg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The concepts of nucleophiles (electron-rich species that donate electrons) and electrophiles (electron-deficient species that accept electrons) are central to these mechanisms, helping to predict the course of reactions. Additionally, this topic delves into reaction types such as substitution, addition, elimination, and rearrangement, each with its own characteristic mechanisms. Understanding these fundamental principles equips you with the tools to predict and explain the behavior of organic compounds in reactions, making this section a cornerstone of organic chemistry.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPLLEKrAI/F3eccXAA6omh2KrTGO6CoA/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Electron Movement in Organic Reactions and Electron Displacement Effects in Covalent Bonds is like understanding the choreography of electrons that drive chemical reactions and determine the stability of molecules. In organic chemistry, reactions occur because of the movement of electrons, and these movements are often represented by curved arrows, showing how bonds are broken and formed. The direction of electron flow is crucial, with nucleophiles (electron donors) targeting electrophiles (electron acceptors) to initiate reactions.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGPLJ637o8/qu0rnJYLH0-s-VGQEx_DYA/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The inductive effect is like a ripple effect of electron movement within a molecule, caused by the presence of atoms with different electronegativities. When atoms in a covalent bond have different abilities to attract electrons, the more electronegative atom pulls the shared electrons closer to itself. This creates a slight negative charge on the more electronegative atom and a slight positive charge on the less electronegative one.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - H )",
          "pdfLink": "https://www.canva.com/design/DAGB6pLQhvI/we8kgIWlI-3-0wOPVSjZ6A/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The inductive effect can be further classified into +I (positive inductive effect) and -I (negative inductive effect) based on whether a group donates or withdraws electron density through a carbon chain. The resonance effect is like a stabilizing force in a molecule that arises from the delocalization of electrons across multiple atoms, creating a blend of possible structures. In molecules where resonance occurs, the electrons, especially those in π bonds or lone pairs, aren't confined to just one bond or atom but instead can move between different positions within the molecule.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - I )",
          "pdfLink": "https://www.canva.com/design/DAGB8BrSsN0/K8u8838hsGhcnWF9CVm4xQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The electrometric effect is like a quick, temporary shift in electron distribution within a molecule in response to an external influence, such as the approach of a reagent. This effect occurs when a molecule is exposed to an attacking species (like a nucleophile or electrophile), causing a complete transfer of electrons from one part of the molecule to another. Hyperconjugation is often referred to as \"no-bond resonance\" or \"Baker-Nathan effect\" and can be thought of as a subtle yet powerful stabilizing interaction in organic molecules.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - J )",
          "pdfLink": "https://www.canva.com/design/DAGPLK0sMLY/UtM8rFFMaHGx8TWr0EaaZQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "In organic chemistry, hyperconjugation occurs when a σ bond (single bond) donates electron density to an adjacent empty or partially filled p-orbital, stabilizing the molecule and affecting its reactivity. Understanding these electron movement concepts is essential for predicting the outcomes of organic reactions and for grasping the behavior of various organic compounds under different conditions.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - K )",
          "pdfLink": "https://www.canva.com/design/DAGB8Lvypks/GDkPDMmZBSs1hUPR1y-8Xw/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Conformations of organic compounds refer to the different spatial arrangements of atoms that can occur due to rotation around single bonds. It's like imagining a flexible toy that can be twisted and turned in various ways without breaking. These conformations can significantly impact the stability and reactivity of a molecule, making the study of conformations vital in organic chemistry.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - L )",
          "pdfLink": "https://www.canva.com/design/DAGB8K2-BjM/xA5Cok-zZikXh5MW-uZ3QQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Understanding the concepts of staggered and eclipsed conformations, as well as the effects of steric hindrance and torsional strain, helps predict the most stable conformations for different organic molecules. This chapter lays the groundwork for understanding the three-dimensional shapes and orientations that influence the behavior of organic compounds.",
          "index": 9,
          "is_paid": true,
          "label": "Organic chemistry - Some basic principles and techniques ( Part - M )",
          "pdfLink": "https://www.canva.com/design/DAGB8KQRE5M/5ye5cq0M6G5y9BdWx3lnXg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Hydrocarbons are organic compounds composed entirely of hydrogen and carbon atoms. They are the simplest form of organic molecules and serve as the foundation for more complex organic structures. Hydrocarbons are primarily classified into two categories: alkanes, which have only single bonds between carbon atoms (e.g., methane, ethane), and alkenes and alkynes, which contain double and triple bonds, respectively (e.g., ethene, ethyne). These compounds are essential in various industries, particularly as fuels (like petrol and natural gas) and as raw materials in the production of plastics, chemicals, and other essential products. Hydrocarbons are abundant in nature, forming the major component of fossil fuels.",
          "index": 10,
          "is_paid": true,
          "label": "Hydrocarbons - Introduction",
          "pdfLink": "https://www.canva.com/design/DAGPLGa9qy0/GFEmLoU8OrVbmOEauK_0HQ/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Alkanes are a type of hydrocarbon where all the carbon atoms are connected by single bonds, making them saturated hydrocarbons. This means that each carbon atom forms four single covalent bonds, either with hydrogen atoms or other carbon atoms.",
          "index": 10,
          "is_paid": true,
          "label": "Alkane ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPLa7kYBs/zkdLXLK2BvITLO2-0JFu_w/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Hydrogenation of Alkenes and Alkynes: In this method, alkenes or alkynes are treated with hydrogen gas in the presence of a catalyst, such as palladium or platinum. This process adds hydrogen atoms to the carbon-carbon multiple bonds, converting them into single bonds and forming alkanes.",
          "index": 10,
          "is_paid": true,
          "label": "Alkane ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLURS_to/Ej_JBUwX25O5HIIMdVTAiA/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "The conformation of alkanes refers to the different spatial arrangements of atoms in an alkane molecule that result from the rotation around carbon-carbon single bonds (C-C bonds). Unlike double or triple bonds, single bonds in alkanes allow free rotation, leading to various conformations, or shapes, of the molecule.",
          "index": 10,
          "is_paid": true,
          "label": "Alkane ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPLW-ME78/W62FsCuN7hTkRbtik7L4Lg/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Alkenes are a class of hydrocarbons that contain at least one carbon-carbon double bond (C=C) within their molecular structure. This double bond gives alkenes unique chemical properties compared to alkanes, making them more reactive.",
          "index": 10,
          "is_paid": true,
          "label": "Alkane ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPLYviYMg/l0W_Dp6SjvWLjbBDGzDcIg/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Alkenes can be prepared by heating alcohols in the presence of an acid catalyst, such as concentrated sulfuric acid (H₂SO₄) or phosphoric acid (H₃PO₄). This process removes a water molecule (H₂O) from the alcohol, resulting in the formation of an alkene.",
          "index": 10,
          "is_paid": true,
          "label": "Alkenes ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPLYviYMg/l0W_Dp6SjvWLjbBDGzDcIg/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Alkenes are unsaturated hydrocarbons characterized by the presence of at least one carbon-carbon double bond (C=C), which imparts unique chemical properties. They are more reactive than alkanes due to this double bond, which allows them to undergo addition reactions where the double bond is broken, and new atoms or groups are added to the carbon atoms.",
          "index": 10,
          "is_paid": true,
          "label": "Alkenes ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLYySQYs/QE-cGuTozxKN8Y-DaKB6fw/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Alkynes are a class of hydrocarbons that contain at least one carbon-carbon triple bond (C≡C) in their molecular structure. This triple bond makes alkynes highly unsaturated and more reactive than both alkanes and alkenes.",
          "index": 10,
          "is_paid": true,
          "label": "Alkynes ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPLVsSF0c/me3iTxR-QXQfWf-Y0C5YWQ/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Aromatic hydrocarbons, also known as arenes, are a special class of hydrocarbons that contain at least one aromatic ring—a cyclic structure with alternating double and single bonds that follows the rules of aromaticity, such as Hückel's rule.",
          "index": 10,
          "is_paid": true,
          "label": "Aromatic hydrocarbons ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPLd4vU6Q/fFF9N2EPaMXZX3gqpxIY3Q/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Aromatic hydrocarbons are known for their stability due to the delocalization of electrons within the ring, making them less reactive than alkenes and alkynes.",
          "index": 10,
          "is_paid": true,
          "label": "Aromatic hydrocarbons ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLX30CR4/VghcUEHY9wfaK6_kOde6-g/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "The chapter on \"Solutions\" in chemistry explores the homogeneous mixtures of two or more substances, where one substance (the solute) is uniformly dispersed in another (the solvent). This chapter covers the various types of solutions based on the physical states of the solute and solvent, such as solid, liquid, and gaseous solutions. It delves into important concepts like concentration terms (molarity, molality, mole fraction, etc.), which quantify the amount of solute in a solution. The chapter also explains the properties of solutions, including colligative properties like boiling point elevation, freezing point depression, osmotic pressure, and vapor pressure lowering, which depend on the number of solute particles rather than their nature. Additionally, it discusses Raoult's law, which relates to the vapor pressure of ideal solutions, and highlights deviations in non-ideal solutions. The understanding of these concepts is essential for various applications in chemical reactions, industrial processes, and biological systems.",
          "index": 11,
          "is_paid": true,
          "label": "Solutions ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGLO7QgDfc/3uo33Qte6cJjRyMdICIdew/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "The \"Solutions\" chapter in chemistry is like diving into the world of mixtures, where the magic of blending substances reveals the secrets of uniformity and interaction at the molecular level. Imagine a solute as a guest who seamlessly blends into a solvent, creating a perfectly balanced party where every molecule plays a role. This chapter takes you on a journey through different types of solutions, exploring how solids, liquids, and gases can dissolve into each other, forming everything from the air we breathe to the drinks we enjoy. It unravels the mysteries behind concentration—how much of a substance is dissolved—and introduces you to colligative properties, the subtle but powerful effects that small amounts of solute can have on the overall behavior of a solution, like how salt can melt ice or sugar can raise the boiling point of water. You'll also encounter Raoult's law, which governs the vapor pressure of solutions, guiding us through the fine line between ideal and non-ideal behavior. The chapter is a gateway to understanding not just chemistry, but the very processes that fuel life and industry, making it a cornerstone of scientific knowledge.",
          "index": 12,
          "is_paid": true,
          "label": "Solutions ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLXSPDHk/pN3FQy_aYqANAQyrvZtNOQ/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "An ideal solution is a type of solution where the interactions between the molecules of the solute and solvent are similar to the interactions between the molecules of the pure components. In other words, the forces of attraction between solute-solvent, solute-solute, and solvent-solvent are nearly identical. As a result, ideal solutions obey Raoult's law throughout their entire composition range. In such solutions, there is no change in enthalpy (ΔH) or volume (ΔV) when the components are mixed. Examples of ideal solutions include mixtures of benzene and toluene or hexane and heptane, where the chemical nature of the components is very similar.",
          "index": 13,
          "is_paid": true,
          "label": "Solutions ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPLaYu37o/2lP4aEi_6JOjGS68Dn2Tzw/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Colligative properties are unique properties of solutions that depend solely on the number of solute particles in a solvent, not on the nature of the solute itself. These properties include vapor pressure lowering, boiling point elevation, freezing point depression, and osmotic pressure. When a non-volatile solute is added to a solvent, these properties change predictably, allowing scientists to determine important characteristics of the solution. One of the key applications of colligative properties is the determination of molar mass. By measuring the extent of boiling point elevation or freezing point depression, for example, one can calculate the molar mass of the solute using established equations that relate these properties to the number of solute particles in the solution. This method is particularly useful for determining the molar mass of unknown substances, especially in cases where other methods might not be practical or possible.",
          "index": 14,
          "is_paid": true,
          "label": "Solutions ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPLYG8ilg/Wn9JTy-HX2Tr8uaa3DlLPw/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Electrochemistry is the branch of chemistry that explores the relationship between electricity and chemical reactions, particularly how chemical energy is converted into electrical energy and vice versa. This field studies processes that involve the movement of electrons, such as oxidation-reduction (redox) reactions, which occur in electrochemical cells. Electrochemistry covers a range of topics, including the working principles of galvanic (or voltaic) cells that generate electricity through spontaneous redox reactions, and electrolytic cells where electrical energy drives non-spontaneous chemical reactions. It also delves into concepts like electrode potentials, the Nernst equation, and the electrochemical series, which help predict the direction and feasibility of redox reactions. Electrochemistry has significant practical applications, including in batteries, fuel cells, electroplating, and corrosion prevention, making it a vital area of study in both industrial processes and everyday technology.",
          "index": 12,
          "is_paid": true,
          "label": "Electrochemistry ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPLpqGCZk/4pzUYj_nH11QLPD4BOe4MQ/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "The Nernst Equation is like a scientific decoder that unlocks the secrets of electrochemical cells, allowing us to predict the behavior of redox reactions under different conditions. At its core, the Nernst Equation helps us understand how the potential (or voltage) of an electrochemical cell changes with the concentration of the ions involved in the reaction. This equation is crucial because, in real-life scenarios, conditions often deviate from the standard state, and the Nernst Equation gives us a tool to calculate the cell potential at any given moment.",
          "index": 13,
          "is_paid": true,
          "label": "Electrochemistry ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLmETe0k/FxJysTCL3YvPl7H-DckGxw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "An electrochemical cell is a device that converts chemical energy into electrical energy (or vice versa) through redox reactions, where electrons are transferred between substances. The cell is composed of two electrodes—an anode (where oxidation occurs) and a cathode (where reduction occurs)—immersed in an electrolyte solution that facilitates the flow of ions. The movement of electrons from the anode to the cathode through an external circuit generates an electric current, which can be harnessed for various applications, such as in batteries and fuel cells.",
          "index": 14,
          "is_paid": true,
          "label": "Electrochemistry ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPLnEV104/FPNBXbkl9oroEg15F-MtAQ/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "The measurement of conductivity in ionic solutions is a key aspect of understanding how well a solution can conduct electricity. Conductivity is a measure of the ability of ions in a solution to carry an electric current. This property depends on the concentration of ions, their charge, and their mobility in the solution. To measure the conductivity of an ionic solution, a conductivity meter is typically used, which consists of two electrodes placed in the solution. When an alternating current (AC) is passed through the solution, the ions move between the electrodes, creating an electrical current. The conductivity meter measures this current and converts it into a conductivity value, usually expressed in Siemens per meter (S/m).",
          "index": 15,
          "is_paid": true,
          "label": "Electrochemistry ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPLivJlks/_-saWxrP1nYg80NrOsOnqg/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "An electrolytic cell is a type of electrochemical cell that uses electrical energy to drive a non-spontaneous chemical reaction. Unlike a galvanic cell, which generates electricity from a spontaneous reaction, an electrolytic cell requires an external power source, like a battery, to induce the reaction. The cell consists of two electrodes—an anode and a cathode—immersed in an electrolyte solution. When electricity is applied, oxidation occurs at the anode, and reduction takes place at the cathode, resulting in the decomposition of the electrolyte into its constituent elements or compounds.",
          "index": 16,
          "is_paid": true,
          "label": "Electrochemistry ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPLp_41fI/6fmT1_wLwNz53Vy0PnNVJA/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Batteries are devices that store and provide electrical energy through electrochemical reactions. They consist of one or more electrochemical cells that convert chemical energy directly into electrical energy. Each cell in a battery typically contains two electrodes—a positive cathode and a negative anode—separated by an electrolyte that facilitates the flow of ions between the electrodes while preventing direct contact. When a battery is connected to an external circuit, a chemical reaction occurs that allows electrons to flow from the anode to the cathode through the circuit, generating an electric current that powers devices.",
          "index": 17,
          "is_paid": true,
          "label": "Electrochemistry ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPLsdApPI/UjpFfkpMTvvkjiSHzwI8ZQ/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Chemical kinetics is the branch of chemistry that studies the rates at which chemical reactions occur and the factors that influence these rates. It delves into how quickly reactants are converted into products and what conditions can accelerate or decelerate this process. Key concepts in chemical kinetics include reaction rate, which measures how fast a reaction proceeds, and the rate law, which expresses the relationship between the reaction rate and the concentrations of reactants.",
          "index": 13,
          "is_paid": true,
          "label": "Chemical kinetics ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPLoZ9S40/xmuRgCDTEdKTJf4cvttYZA/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The rate of a chemical reaction is influenced by several factors, including the concentration of reactants, temperature, surface area, catalysts, and the nature of reactants. Higher concentrations of reactants increase the rate of reaction because more particles are available to collide. Temperature also plays a significant role, as increasing it provides more kinetic energy to the molecules, resulting in more frequent and energetic collisions. The surface area of solid reactants affects the reaction rate as well, with larger surface areas allowing more particles to react. Catalysts speed up reactions by lowering the activation energy, making it easier for reactants to form products. Additionally, the nature of the reactants, including their molecular structure and bond strengths, can influence how quickly a reaction occurs. Understanding these factors is crucial for controlling and optimizing reaction rates in various chemical processes.",
          "index": 14,
          "is_paid": true,
          "label": "Chemical kinetics ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPLlHsRAI/0cPcH9CaASAOK7nI45WO-Q/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Integrated rate equations are mathematical expressions that relate the concentration of reactants to time for a given order of reaction. These equations are derived by integrating the differential rate laws, which describe how the rate of a reaction depends on the concentration of reactants. The integrated rate equations provide a way to determine the concentration of reactants at any point in time during the reaction, allowing for the calculation of important parameters like half-life.",
          "index": 15,
          "is_paid": true,
          "label": "Chemical kinetics ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPLubZDJg/sqjf0JOB3Z1NtQbr7KE3hQ/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "A catalyst is a substance that speeds up the rate of a chemical reaction without being consumed or permanently altered in the process. It works by providing an alternative reaction pathway with a lower activation energy, making it easier for reactant molecules to collide with enough energy to undergo the reaction. This lower energy barrier means that more molecules have the necessary energy to react at a given temperature, thereby increasing the reaction rate.",
          "index": 16,
          "is_paid": true,
          "label": "Chemical kinetics ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPLmcU4bw/n2mClUXDimfo3sufgsVsOw/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "The d block elements, also known as transition metals, occupy the center of the periodic table. These elements are like the 'builders' of the atomic world, forming strong bonds with other elements and creating a wide array of compounds. They're the metals we encounter in our everyday lives, from the iron in our blood to the copper in electrical wires, and the gold in jewelry.",
          "index": 14,
          "is_paid": true,
          "label": "d - block",
          "pdfLink": "https://www.canva.com/design/DAGPOsJGMkk/Zfyn5To7XZ8Y6kK3EpbQ4A/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "The f block elements, often tucked away at the bottom of the periodic table, are known as the inner transition metals. These elements are like the 'magicians' of the atomic world, with unique properties that make them invaluable in modern technology.",
          "index": 15,
          "is_paid": true,
          "label": "f - block",
          "pdfLink": "https://www.canva.com/design/DAGPOkqpSfo/JrpEIHdBMOCCM_pZ3B5VEA/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "The elements in Group 15 of the periodic table are often referred to as the 'Nitrogen Family.' This group includes nitrogen (N), phosphorus (P), arsenic (As), antimony (Sb), and bismuth (Bi). These elements share some interesting similarities, but they also have unique properties that make them essential in various fields.",
          "index": 15,
          "is_paid": true,
          "label": "Group - 15",
          "pdfLink": "https://www.canva.com/design/DAGPOmTccaA/t1Ae85vgDwCMA9zhxLUl0w/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "The elements in Group 16 of the periodic table are collectively known as the 'Oxygen Family' or 'Chalcogens.' This group includes oxygen (O), sulfur (S), selenium (Se), tellurium (Te), and polonium (Po). These elements are known for their crucial roles in life processes, industrial applications, and even some surprising uses.",
          "index": 16,
          "is_paid": true,
          "label": "Group - 16",
          "pdfLink": "https://www.canva.com/design/DAGPOqNUOL8/33yj8oKs3kxeGuY03m89OQ/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Group 17 of the periodic table is known as the 'Halogen Family,' and it consists of five elements: fluorine (F), chlorine (Cl), bromine (Br), iodine (I), and astatine (At). The word 'halogen' comes from Greek, meaning 'salt-former,' as these elements readily form salts when they react with metals. The halogens are highly reactive, especially with alkali and alkaline earth metals, and have a wide range of applications in everyday life.",
          "index": 17,
          "is_paid": true,
          "label": "Group - 17",
          "pdfLink": "https://www.canva.com/design/DAGPOh6GUoE/K9mnKLIQSPc4kbgS17w2DA/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Group 18 of the periodic table is home to the 'Noble Gases,' a group of elements that are often seen as the aristocrats of the chemical world. This group includes helium (He), neon (Ne), argon (Ar), krypton (Kr), xenon (Xe), and the radioactive radon (Rn). These elements are unique because they are mostly inert, meaning they do not easily react with other elements. This lack of reactivity is due to their full valence electron shells, making them stable and 'noble.'",
          "index": 18,
          "is_paid": true,
          "label": "Group - 18",
          "pdfLink": "https://www.canva.com/design/DAGPOm2QA48/yE0oerFk_3kTEFiN3NZoiw/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Werner’s Coordination Theory, proposed by Swiss chemist Alfred Werner in 1893, is a fundamental concept in inorganic chemistry that explains the bonding in complex compounds, particularly coordination complexes. Before Werner’s theory, the understanding of such compounds was limited and often incorrect. Werner's work earned him the Nobel Prize in Chemistry in 1913, and his theory laid the foundation for modern coordination chemistry.",
          "index": 16,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGCSL30Fs4/mQrzNUEz_0gDZri9SkdNeA/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Werner’s Coordination Theory revolutionized the understanding of how metal atoms bind with other molecules or ions. It explained the fixed numbers and spatial arrangement of ligands around central metal ions, which was crucial in explaining the structures and behaviors of complex compounds. His work also paved the way for the development of coordination chemistry, influencing fields such as bioinorganic chemistry, catalysis, and material science.",
          "index": 17,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGCo2uFtiI/E2YyhkMRYaccPI4OVRiIWg/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Coordination compounds are complex molecules that consist of a central metal atom or ion bonded to surrounding molecules or ions known as ligands. Some important terms related to coordination compounds include: Coordination Number, Ligands, Coordination Sphere, Chelation, Isomerism, and Coordination Geometry. These terms are crucial for understanding the structure, bonding, and reactivity of coordination compounds in chemistry.",
          "index": 18,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGCqtJ3g8U/8g6hsxvCbuFy9cuTI8oRdA/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Isomerism in coordination compounds refers to the phenomenon where compounds with the same chemical formula have different arrangements of atoms, leading to distinct physical and chemical properties. Isomerism in coordination compounds is broadly categorized into two types: Structural Isomerism and Stereoisomerism.",
          "index": 19,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPOt9yXVA/My8CwW8pSF4ADZz6K00W9g/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Bonding in coordination compounds involves the interaction between a central metal atom or ion and surrounding ligands, explained by the Lewis acid-base theory. The metal ion acts as a Lewis acid, while the ligands serve as Lewis bases. The resulting coordinate bonds are formed when ligands donate lone pairs of electrons to the vacant orbitals of the metal ion.",
          "index": 20,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPOtfKqDc/JHozzW3MeWLyU3c_Dr9uzw/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "CFT explains the splitting of d-orbitals in the metal ion due to the electrostatic interaction with ligands, affecting stability, color, and magnetism. MOT describes the formation of molecular orbitals through the overlap of atomic orbitals of the metal and ligands, providing a comprehensive view of the bonding and electronic properties of coordination compounds.",
          "index": 21,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPOu9har4/4r3_hk6hOBcajQzyuvm14w/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Bonding in metal carbonyls, which are coordination compounds consisting of a transition metal bonded to carbon monoxide (CO) ligands, is characterized by a synergic interaction between the metal and the CO ligands. This bonding involves σ-donation and π-backbonding.",
          "index": 22,
          "is_paid": true,
          "label": "Co - ordination compounds ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGPOlNejr0/M0O7YsLvYIZSFamhiUSCTQ/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Haloalkenes, also known as alkenyl halides or vinyl halides, are a class of organic compounds in which one or more hydrogen atoms in an alkene (a hydrocarbon with a carbon-carbon double bond) are replaced by halogen atoms (fluorine, chlorine, bromine, or iodine). The presence of both a double bond and a halogen atom in the molecule makes haloalkenes highly reactive and versatile in organic synthesis.",
          "index": 17,
          "is_paid": true,
          "label": "Haloalkenes ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPOmL2Ml8/h8MteBMEafWifWX1I8v-Ew/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "The double bond in haloalkenes provides sites for various chemical reactions, such as addition and polymerization, while the halogen atom influences the molecule's reactivity and physical properties. For instance, the halogen atom can make the carbon-carbon double bond more susceptible to nucleophilic attack due to the electron-withdrawing effect of the halogen. This effect also impacts the boiling points and solubility of haloalkenes, making them distinct from their non-halogenated counterparts.",
          "index": 18,
          "is_paid": true,
          "label": "Haloalkenes ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPOsWOUoI/V4_lPrBQj3E2shpE6GfkmA/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Haloarenes, also known as aryl halides, are a class of organic compounds in which one or more hydrogen atoms in an aromatic ring, typically a benzene ring, are replaced by halogen atoms (fluorine, chlorine, bromine, or iodine). Unlike their aliphatic counterparts, haloalkanes, haloarenes possess a distinctive structure due to the presence of the aromatic ring, which significantly influences their chemical behavior and reactivity.",
          "index": 19,
          "is_paid": true,
          "label": "Haloarenes ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPO6TgJXo/RF77rp4soz-kWloa1gO-1w/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "In haloarenes, the carbon-halogen bond is more stable and less reactive due to the resonance in the aromatic ring. The partial double bond character between the carbon and the halogen, caused by the overlap of the halogen's p-orbitals with the π-electron cloud of the benzene ring, makes the bond stronger. This resonance also makes the halogen atom less likely to participate in nucleophilic substitution reactions, which are common in haloalkanes.",
          "index": 20,
          "is_paid": true,
          "label": "Haloarenes ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPO7u8m9U/y2a2z7myFYw3f6pZfVGNLg/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Polyhalogen compounds are organic molecules in which two or more hydrogen atoms are replaced by halogen atoms (fluorine, chlorine, bromine, or iodine). These compounds are characterized by their multiple halogen substituents, which significantly influence their chemical and physical properties. Due to the presence of multiple halogens, polyhalogen compounds often exhibit enhanced stability, increased density, and higher reactivity compared to their mono-halogenated counterparts.",
          "index": 21,
          "is_paid": true,
          "label": "Polyhalogen compounds",
          "pdfLink": "https://www.canva.com/design/DAGPO3ZVCg4/tNzvmaHlrdutDKOeFSoJFQ/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Alcohol is a fascinating and versatile compound that plays many roles in our daily lives. At its core, alcohol is an organic molecule composed of a hydroxyl group (-OH) attached to a carbon atom, which can be part of a larger chain or ring. The most familiar type of alcohol is ethanol (C₂H₅OH), which is the active ingredient in alcoholic beverages. But beyond the world of drinks, alcohols are key players in chemistry and industry.",
          "index": 18,
          "is_paid": true,
          "label": "Alcohol ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPPGmVYWk/EcIrPZujx1esLkbKd6y2NA/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "One of the interesting things about alcohols is how their chemical structure influences their properties. For example, the longer the carbon chain in an alcohol, the less soluble it becomes in water, yet its boiling point increases. This is why simple alcohols like methanol and ethanol are liquids at room temperature, while larger ones like cetyl alcohol are waxy solids.",
          "index": 19,
          "is_paid": true,
          "label": "Alcohol ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPPOuK0qg/Sa7SnTS6ycl6hjzw7j6nNA/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "In industry, alcohols are the backbone of countless products, from fuels like bioethanol to antifreeze and solvents. However, it’s important to remember that while alcohol can be beneficial in moderation and in specific applications, it can also be harmful if consumed in excess, leading to health issues such as liver damage and addiction.",
          "index": 20,
          "is_paid": true,
          "label": "Alcohol ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPPHK1OU0/n4LrWIGhQQf1V20jgi2eGA/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Phenols are a unique class of organic compounds characterized by the presence of a hydroxyl group (-OH) directly bonded to an aromatic benzene ring. This structural arrangement gives phenols distinct properties compared to other alcohols. The simplest and most well-known phenol is simply called 'phenol' (C₆H₅OH), a white crystalline solid that is slightly soluble in water and has a somewhat sweet, tar-like odor.",
          "index": 21,
          "is_paid": true,
          "label": "Phenols ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPPFpBCiU/xOWavVMXECFLWE28kqMfBg/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Phenols have a wide range of applications. In medicine, phenol itself was historically used as an antiseptic, although its use has declined due to its caustic nature. Today, phenolic compounds are more commonly found in disinfectants, mouthwashes, and other products where their antimicrobial properties are valuable.",
          "index": 22,
          "is_paid": true,
          "label": "Phenols ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPPDVDWpA/tgHU4hSk4JF8QV7KIUnzIQ/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Ethers are a class of organic compounds that stand out for their simple yet versatile structure. They consist of an oxygen atom connected to two alkyl or aryl groups (R-O-R’), where the two 'R' groups can be identical or different. This structure gives ethers a distinct set of chemical and physical properties.",
          "index": 23,
          "is_paid": true,
          "label": "Ethers",
          "pdfLink": "https://www.canva.com/design/DAGPPObbq8Y/_kyknC1ht7M-DELs5JKyZA/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Aldehydes are a fascinating and essential class of organic compounds that play a pivotal role in both chemistry and everyday life. Structurally, aldehydes are characterized by the presence of a carbonyl group (C=O) bonded to at least one hydrogen atom, giving them the general formula R-CHO, where 'R' represents a hydrogen or an alkyl/aryl group. This carbonyl group is what gives aldehydes their distinct reactivity and unique properties.",
          "index": 19,
          "is_paid": true,
          "label": "Aldehyde",
          "pdfLink": "https://www.canva.com/design/DAGPPDVwJOA/zJVn07X7o6aPwfy4duouKg/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Ketones are a versatile and intriguing class of organic compounds that are integral to both the chemistry lab and the natural world. Structurally, ketones are defined by the presence of a carbonyl group (C=O) bonded to two carbon atoms, giving them the general formula R-CO-R’, where 'R' and 'R’' are alkyl or aryl groups. This central carbonyl group is what gives ketones their distinct chemical behavior.",
          "index": 20,
          "is_paid": true,
          "label": "Ketones",
          "pdfLink": "https://www.canva.com/design/DAGPPBeqvpY/MOQum5w0OcxRkepMaSn4tw/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Carboxylic acids are a remarkable and diverse group of organic compounds that are key players in both chemistry and biology. Characterized by the presence of a carboxyl group (-COOH), these acids are defined by a carbon atom double-bonded to an oxygen atom (forming a carbonyl group) and single-bonded to a hydroxyl group. This functional group is what gives carboxylic acids their distinctive acidic properties and reactivity.",
          "index": 21,
          "is_paid": true,
          "label": "Carboxylic acids",
          "pdfLink": "https://www.canva.com/design/DAGPPOBGx5c/0AfQWU9LQ1VKpjSP-W0O6Q/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Amines are a fascinating and versatile class of organic compounds that are foundational in both chemistry and biology. They are derived from ammonia (NH₃) by replacing one or more hydrogen atoms with alkyl or aryl groups, leading to a wide variety of structures and functions. Amines can be classified into three main types: primary (R-NH₂), secondary (R₂NH), and tertiary (R₃N), depending on how many hydrogen atoms have been replaced. In the biological world, amines are indispensable. They form the backbone of amino acids, the building blocks of proteins, which are essential for life. The amino group (-NH₂) in amino acids is crucial for the formation of proteins, which are responsible for everything from muscle structure to enzyme function. Another important amine is histamine, a compound involved in immune responses, regulating stomach acid, and functioning as a neurotransmitter. Amines are also known for their role in the creation of alkaloids—naturally occurring compounds found in plants, which often have potent biological effects. Caffeine, nicotine, and morphine are all examples of alkaloids, and they owe their activity to the presence of amine groups within their structures.",
          "index": 20,
          "is_paid": true,
          "label": "Amines ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPPBHg3p8/5-iqvWhH0Us2xlhuPypsNw/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Amines are a fascinating and versatile class of organic compounds that are foundational in both chemistry and biology. They are derived from ammonia (NH₃) by replacing one or more hydrogen atoms with alkyl or aryl groups, leading to a wide variety of structures and functions. Amines can be classified into three main types: primary (R-NH₂), secondary (R₂NH), and tertiary (R₃N), depending on how many hydrogen atoms have been replaced. In the biological world, amines are indispensable. They form the backbone of amino acids, the building blocks of proteins, which are essential for life. The amino group (-NH₂) in amino acids is crucial for the formation of proteins, which are responsible for everything from muscle structure to enzyme function. Another important amine is histamine, a compound involved in immune responses, regulating stomach acid, and functioning as a neurotransmitter. Amines are also known for their role in the creation of alkaloids—naturally occurring compounds found in plants, which often have potent biological effects. Caffeine, nicotine, and morphine are all examples of alkaloids, and they owe their activity to the presence of amine groups within their structures.",
          "index": 21,
          "is_paid": true,
          "label": "Amines ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPPAk5kmE/4xIizxv7SBuD5Y0RLgIzZQ/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Amines are a fascinating and versatile class of organic compounds that are foundational in both chemistry and biology. They are derived from ammonia (NH₃) by replacing one or more hydrogen atoms with alkyl or aryl groups, leading to a wide variety of structures and functions. Amines can be classified into three main types: primary (R-NH₂), secondary (R₂NH), and tertiary (R₃N), depending on how many hydrogen atoms have been replaced. In the biological world, amines are indispensable. They form the backbone of amino acids, the building blocks of proteins, which are essential for life. The amino group (-NH₂) in amino acids is crucial for the formation of proteins, which are responsible for everything from muscle structure to enzyme function. Another important amine is histamine, a compound involved in immune responses, regulating stomach acid, and functioning as a neurotransmitter. Amines are also known for their role in the creation of alkaloids—naturally occurring compounds found in plants, which often have potent biological effects. Caffeine, nicotine, and morphine are all examples of alkaloids, and they owe their activity to the presence of amine groups within their structures.",
          "index": 22,
          "is_paid": true,
          "label": "Amines ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPPEJZvpM/Idp6mqi-ms-Cexuu7W6VKw/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Diazonium salts are a fascinating and highly reactive class of organic compounds that have played a crucial role in the development of synthetic chemistry, particularly in the creation of dyes and pigments. These salts are characterized by the presence of a diazonium group (-N₂⁺) attached to an aromatic ring, typically represented by the general formula ArN₂⁺X⁻, where 'Ar' stands for an aryl group and 'X⁻' represents a counterion, often a halide like chloride (Cl⁻) or bromide (Br⁻).",
          "index": 23,
          "is_paid": true,
          "label": "Diazonium salts",
          "pdfLink": "https://www.canva.com/design/DAGPPGKbtRA/DzkyGeBVY0VVOtCarobppw/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Biomolecules are the chemical building blocks of life, forming the complex structures and performing the vital functions that sustain all living organisms. These molecules are vast and diverse, encompassing a wide range of compounds that include carbohydrates, proteins, lipids, and nucleic acids, each playing a unique and essential role in the biology of cells.",
          "index": 21,
          "is_paid": true,
          "label": "Biomolecules ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPPMYTjFw/-I4tjCa8m0d4RDFSOrwtIg/view?embed",
          "totalTimeInMin": "120",
          "type": 21
        },
        {
          "description": "Biomolecules are not only the fundamental components of life, but they also interact in incredibly complex and regulated ways to ensure the proper functioning of cells and organisms. The chemistry of biomolecules involves understanding these interactions, the ways they are synthesized and broken down, and how they contribute to the overall physiology of an organism.",
          "index": 22,
          "is_paid": true,
          "label": "Biomolecules ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPPI5ZHL0/ajTX-uNebCcxULF8iotzrA/view?embed",
          "totalTimeInMin": "120",
          "type": 21
        },
        {
          "description": "Biomolecules are the cornerstone of biological chemistry, intricately woven into the fabric of life itself. Each class of biomolecule, from the energy-storing carbohydrates and lipids to the versatile proteins and information-bearing nucleic acids, plays a crucial role in maintaining the delicate balance that defines living systems. Their study reveals the beautiful complexity of life at the molecular level, offering insights into how life is structured, how it functions, and how it evolves.",
          "index": 23,
          "is_paid": true,
          "label": "Biomolecules ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPPC9YsAo/ukbuIy1ofpaf_4j6rM3Z3g/view?embed",
          "totalTimeInMin": "120",
          "type": 21
        }
      ]
    },
    {
      'icon':'https://cdn-icons-png.flaticon.com/512/8832/8832880.png',
      'label':'Physics',
      'is_paid':true,
      'subject_type':[
        {
          'label':'Integration ',
          'type':'1',
        },
        {
          'label':'How to make graphs',
          'type':'2',
        },
        {
          'label':'Vectors ',
          'type':'3',
        },
        {
          'label':'Unit and Measurement ',
          'type':'4',
        },
        {
          'label':'Motion in a straight line ',
          'type':'5',
        },
        {
          'label':'Motion in a Plane',
          'type':'6',
        },
        {
          'label':'Laws of Motion ',
          'type':'7',
        },
        {
          'label':'Work , energy and power ',
          'type':'8',
        },
        {
          'label':'System of particles and rotational motion ',
          'type':'9',
        },
        {
          'label':'Gravitation ',
          'type':'10',
        },
        {
          'label':'Mechanical properties of solids ',
          'type':'11',
        },
        {
          'label':'Mechanical properties of fluids ',
          'type':'12',
        },
        {
          'label':'Thermal properties of matter',
          'type':'13',
        },
        {
          'label':'Thermodynamics ',
          'type':'14',
        },
        {
          'label':'Kinetic Theory ',
          'type':'15',
        },
        {
          'label':'Oscillation ',
          'type':'16',
        },
        {
          'label':'Waves',
          'type':'17',
        },
        {
          'label':'Electric Charges and Fields',
          'type':'18',
        },
        {
          'label':'Electrostatic potential and capacitance ',
          'type':'19',
        },
        {
          'label':'Current electricity',
          'type':'20',
        },
        {
          'label':'Moving charges and magnetism ',
          'type':'21',
        },
        {
          'label':'Magnetism and matter ',
          'type':'22',
        },
        {
          'label':'Electromagnetic induction ',
          'type':'23',
        },
        {
          'label':'Alternating current ',
          'type':'24',
        },
        {
          'label':'Electromagnetic waves ',
          'type':'25',
        },
        {
          'label':'Ray Optics and optical instruments ',
          'type':'26',
        },
        {
          'label':'Wave optics ',
          'type':'27',
        },
        {
          'label':'Dual nature of matter and radiation ',
          'type':'28',
        },
        {
          'label':'Atoms',
          'type':'29',
        },
        {
          'label':'Nuclei',
          'type':'30',
        },
        {
          'label':'Semiconductor electronics : Material , Devices and simple circuits',
          'type':'31',
        },
      ],
      'chapters':[
        {
          'description':'Integration is a fundamental concept in calculus, often considered the reverse process of differentiation. While differentiation focuses on finding the rate of change, integration is all about summing up those changes to determine the total accumulation of a quantity. Essentially, integration allows us to calculate areas under curves, volumes, and even the total accumulation of quantities over time or space.',
          'index':1,
          'is_paid':true,
          'label':'Integration',
          'pdfLink':'https://www.canva.com/design/DAGOe3WKiLs/6qRPDWGW2up1lGEh0xG9Pw/view?embed',
          'totalTimeInMin':'120',
          'type':1
        },
        {
          'description':'Creating graphs in physics is a crucial skill that helps visualize relationships between different physical quantities. Graphs serve as a powerful tool for interpreting data, understanding concepts, and predicting outcomes. Whether you’re plotting the motion of an object, analyzing electric circuits, or studying thermodynamic processes, mastering the art of graphing is essential.',
          'index':2,
          'is_paid':true,
          'label':'How to make graphs ?',
          'pdfLink':'https://www.canva.com/design/DAGOnK-T2sc/KWV5z1dnCAnmNJxdy1Akjw/view?embed',
          'totalTimeInMin':'120',
          'type':2
        },
        {
          'description':'Vectors are a fundamental concept in physics and mathematics, representing quantities that have both magnitude (size) and direction. Unlike scalar quantities, which only have magnitude (like temperature or mass), vectors are used to describe anything that involves both how much and in which direction, such as velocity, force, or displacement.',
          'index':3,
          'is_paid':true,
          'label':'Vectors',
          'pdfLink':'https://www.canva.com/design/DAGPPXVgXZA/m77PLj82U2nd1C2_idoIFQ/view?embed',
          'totalTimeInMin':'120',
          'type':3
        },

          {
            "description": "Measurement is the process of determining the size, quantity, or degree of something using a standard unit. It’s a fundamental part of physics, helping us quantify physical quantities like length, mass, time, temperature, and more. Units are standardized values used to express measurements. For example, the meter (m) is a unit of length, and the kilogram (kg) is a unit of mass.",
            "index": 4,
            "is_paid": true,
            "label": "Unit and Measurement ( Part - 1 )",
            "pdfLink": "https://www.canva.com/design/DAGPPgvKMxU/zRaEeROdu0-KPxTSx_yx-w/view?embed",
            "totalTimeInMin": "120",
            "type": 4
          },
          {
            "description": "When measuring very small distances, like the thickness of a hair, the diameter of a thin wire, or the size of a microscopic organism, traditional rulers or measuring tapes are not effective. Instead, we use specialized methods and instruments.",
            "index": 5,
            "is_paid": true,
            "label": "Unit and Measurement ( Part - 2 )",
            "pdfLink": "https://www.canva.com/design/DAGPP_8Xiy0/zA0D2yR7iSJR5_arI_kM-A/view?embed",
            "totalTimeInMin": "120",
            "type": 4
          },
          {
            "description": "In the world of measurement, errors are inevitable. They represent the difference between the measured value and the true value of a quantity. Understanding and managing errors is crucial in scientific experiments, engineering, and everyday measurements to ensure accuracy and reliability.",
            "index": 6,
            "is_paid": true,
            "label": "Unit and Measurement ( Part - 3 )",
            "pdfLink": "https://www.canva.com/design/DAGPP_pHUYw/H0L001kSZNluFQjr0YKV7g/view?embed",
            "totalTimeInMin": "120",
            "type": 4
          },
          {
            "description": "Significant figures, or significant digits, are the digits in a number that contribute to its precision. They represent the meaningful and reliable digits in a measurement, reflecting the accuracy of the measurement process. Understanding significant figures is essential in scientific calculations to ensure that the results are accurate and consistent.",
            "index": 7,
            "is_paid": true,
            "label": "Unit and Measurement ( Part - 4 )",
            "pdfLink": "https://www.canva.com/design/DAGPP__lkAY/IO2FFLWViJln7deeMIxmIQ/view?embed",
            "totalTimeInMin": "120",
            "type": 4
          },
          {
            "description": "Dimensional analysis is a method used in physics and engineering to understand the relationships between different physical quantities by analyzing their dimensions. The primary goal of dimensional analysis is to ensure that equations are dimensionally consistent and to simplify complex problems by reducing the number of variables.",
            "index": 8,
            "is_paid": true,
            "label": "Unit and Measurement ( Part - 5 )",
            "pdfLink": "https://www.canva.com/design/DAGPP00koTE/AtrHctl0UK6uyp_Hnbnbeg/view?embed",
            "totalTimeInMin": "120",
            "type": 4
          },
          {
            "description": "Motion in a straight line, also known as rectilinear motion, refers to the movement of an object along a straight path. This is one of the simplest forms of motion and is a fundamental concept in physics, particularly in the study of kinematics.",
            "index": 5,
            "is_paid": true,
            "label": "Motion in a straight line",
            "pdfLink": "https://www.canva.com/design/DAGKpeeECW0/jwO7mXFFim_hC8X5EIUXbg/view?embed",
            "totalTimeInMin": "120",
            "type": 5
          },
          {
            "description": "Motion in a plane, also known as two-dimensional motion, refers to the movement of an object in two dimensions, typically described using the x-axis and y-axis of a coordinate system. Unlike motion in a straight line (which is one-dimensional), motion in a plane involves both horizontal and vertical components, making it more complex and requiring vector analysis.",
            "index": 6,
            "is_paid": true,
            "label": "Motion in a Plane",
            "pdfLink": "https://www.canva.com/design/DAGKq5_R9Ow/vlQK97OmuItNnx9Er-TH9g/view?embed",
            "totalTimeInMin": "120",
            "type": 6
          },
        {
          "description": "The Laws of Motion, formulated by Sir Isaac Newton, are the fundamental principles that describe the relationship between the motion of an object and the forces acting on it. These laws are the cornerstone of classical mechanics and are essential for understanding how objects move and interact in the physical world.",
          "index": 7,
          "is_paid": true,
          "label": "Laws of Motion",
          "pdfLink": "https://www.canva.com/design/DAGKtbC_yfA/392PlJeH59GYLrVpxGSHKA/view?embed",
          "totalTimeInMin": "120",
          "type": 7
        },
        {
          "description": "The Laws of Motion are foundational principles in physics that describe the behavior of objects in response to forces. Understanding these laws not only helps us grasp the mechanics of everyday life but also forms the basis for more advanced studies in science and engineering.",
          "index": 8,
          "is_paid": true,
          "label": "Points to Ponder",
          "pdfLink": "https://www.canva.com/design/DAGPPyBTN-A/sehkENgAVOdS5HCMmOR4ww/view?embed",
          "totalTimeInMin": "120",
          "type": 7
        },
        {
          "description": "Work, energy, and power are fundamental concepts in physics that describe how forces interact with objects, how energy is transferred or transformed, and how quickly these processes occur. These concepts are crucial for understanding a wide range of physical phenomena, from the movement of objects to the functioning of machines.",
          "index": 8,
          "is_paid": true,
          "label": "Work, energy and power ( Part - A)",
          "pdfLink": "https://www.canva.com/design/DAGPPw9K8MU/KT1gUMixaLHpbSfpBvfpsA/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Kinetic energy is the energy possessed by an object due to its motion. It is one of the most fundamental forms of energy in physics, playing a crucial role in understanding how objects move and interact.",
          "index": 9,
          "is_paid": true,
          "label": "Work, energy and power ( Part - B)",
          "pdfLink": "https://www.canva.com/design/DAGPP1kznZA/ba7n3DzL7M1GDwr-uxY2aA/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Potential energy is the energy that an object possesses because of its position or state. It’s the stored energy that has the potential to do work when released.",
          "index": 10,
          "is_paid": true,
          "label": "Work, energy and power ( Part - C)",
          "pdfLink": "https://www.canva.com/design/DAGLZyQ9JcM/Mn7nEjkc_mJLY0RvFmQxHQ/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "The concept of conservation of mechanical energy reveals how energy transforms but never disappears. It's a principle that helps us understand the motion of everything from a swinging pendulum to a roller coaster in action.",
          "index": 11,
          "is_paid": true,
          "label": "Work, energy and power ( Part - D)",
          "pdfLink": "https://www.canva.com/design/DAGPP8ASV-0/5GugRKdto3X2mQQj9vWKYQ/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Energy exists in various forms, such as kinetic, potential, thermal, chemical, and electrical, each capable of transforming into another. The law of conservation of energy states that energy cannot be created or destroyed; it can only change forms.",
          "index": 12,
          "is_paid": true,
          "label": "Work, energy and power ( Part - E)",
          "pdfLink": "https://www.canva.com/design/DAGPP7vwfY0/BU_LzaTIK7bPmZh6lrU4tw/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Collisions are a common and fascinating event in the physical world, occurring whenever two or more objects come into contact with each other, often resulting in a transfer of energy and momentum.",
          "index": 13,
          "is_paid": true,
          "label": "Work, energy and power ( Part - F)",
          "pdfLink": "https://www.canva.com/design/DAGPP15Injo/3VtrUSNPvQWJ1h_miTM72g/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Work, energy, and power are interconnected concepts that play a vital role in understanding how forces interact with objects, how energy is transferred or transformed, and how quickly these processes occur.",
          "index": 14,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPPydWUAQ/cXEWxyZl-YkjXuzygWlMag/view?embed",
          "totalTimeInMin": "120",
          "type": 8
        },
        {
          "description": "Imagine a team of dancers performing on stage. Each dancer represents a particle in a system, moving in harmony with the others, following the rhythm and beats of the music. Now, picture the stage itself rotating slowly, adding a twist (literally!) to the performance. This beautiful coordination is what the 'System of Particles and Rotational Motion' is all about.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPQM__6jc/I1GQr2iRYx4cW-wlYHU7Jw/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Think of a group of ice skaters holding hands and moving across the rink. Each skater might be gliding in their own way, but together, they form a group that moves as one. The path that this group takes can be described by focusing on one special point—the Centre of Mass.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPQLeSJZQ/IOfDskbfPzVj4bM2cqqJQQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The Linear Momentum of a System of Particles is the sum of the momenta of all the individual particles in the system. It’s like adding up the contributions of each runner to determine the overall momentum of the relay team.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPQFBPGqY/bDyCU7j0hEAH-fy7-xY3Eg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Torque and angular momentum are fundamental concepts in the study of rotational motion, much like force and linear momentum are in linear motion. Torque is the rotational equivalent of force.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPQIWeJZo/Xxqvsd4whvOkUWHG-rZJww/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The equilibrium of a rigid body occurs when the body is at rest or moving with constant velocity, meaning there’s no net force or torque acting on it.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPQI140QE/fKmAQ5UFFDzuf3C0Ad4l6Q/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "The centre of gravity is the point in an object where the entire weight appears to be concentrated and where gravity acts.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPQBDkLe4/8LrmjQLyZGdvBT0TATwtCQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Theorems of Parallel and Perpendicular Axes help us understand how an object's moment of inertia changes depending on its rotation axis.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - G )",
          "pdfLink": "https://www.canva.com/design/DAGPQFH3rng/v0sLW7qCRUMQ6pjLBkdzGQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Kinematics of rotational motion about a fixed axis deals with the movement of objects that spin around a stationary line, or axis.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - H )",
          "pdfLink": "https://www.canva.com/design/DAGPQdhOwqA/JTMI1lVnbg4cjah3SgOdgg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Dynamics of rotational motion about a fixed axis involves understanding how forces and torques cause an object to rotate around a stationary axis.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - I )",
          "pdfLink": "https://www.canva.com/design/DAGPQcdkuyQ/xceL_Yr6_-ojNu-tPxIrmg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Angular momentum in the case of rotation about a fixed axis refers to the quantity that measures the rotational motion of an object around that axis.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - J )",
          "pdfLink": "https://www.canva.com/design/DAGPQSVbf8U/nwmDXw2NdMuR64DgDn5oMA/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Conservation of angular momentum is a fundamental principle in physics that states when no external torque acts on a rotating system, the total angular momentum of that system remains constant.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - K )",
          "pdfLink": "https://www.canva.com/design/DAGPQapoeqM/cwxVAny7wAAHpitOoW_Ugw/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Rolling motion occurs when an object, like a wheel or a ball, moves forward while also spinning around its own axis.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - L )",
          "pdfLink": "https://www.canva.com/design/DAGPQd-X56U/PVrG_QiK2h2nV7B9RynBaQ/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "When studying rotational motion, there are several key points to keep in mind. First, unlike linear motion, rotational motion involves objects spinning around an axis.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - M )",
          "pdfLink": "https://www.canva.com/design/DAGPQcX72lk/VOwf56FvRvkAl3nLxYq61g/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Points to ponder.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - N )",
          "pdfLink": "https://www.canva.com/design/DAGPQYg01_E/1TaAftafrkjcURpcCJCwbw/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Points to ponder.",
          "index": 9,
          "is_paid": true,
          "label": "System of particles and rotational motion ( Part - O )",
          "pdfLink": "https://www.canva.com/design/DAGPQblFc7k/kEiTTl0lvZzWgBPONxDEQg/view?embed",
          "totalTimeInMin": "120",
          "type": 9
        },
        {
          "description": "Gravitation is the natural force of attraction between any two objects that have mass. It's the reason why everything on Earth, from falling apples to the vast oceans, is pulled toward the center of the planet. This force is universal, meaning it acts not only on Earth but throughout the entire universe, holding planets in orbit around stars and moons around planets. The strength of gravitational pull depends on two things: the masses of the objects and the distance between them. The greater the mass, the stronger the force; the farther apart they are, the weaker the pull. This force, though invisible, is the glue that binds the universe together, shaping everything from the motion of galaxies to the trajectory of a simple basketball.",
          "index": 10,
          "is_paid": true,
          "label": "Gravitation ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPQ1Kd9_Y/hoPmok1PmmS0Ha6GYuF3Sg/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Acceleration due to gravity is the rate at which an object increases its speed as it falls freely under Earth's gravitational pull. On Earth, this acceleration means that an object in free fall gets faster every second. This rate is consistent for all objects, regardless of their mass, as long as air resistance is not a factor. The strength of this acceleration can slightly vary depending on your location, being a bit weaker at the equator and stronger at the poles because of Earth's shape and rotation. This consistent acceleration is what gives objects their weight and influences the motion of everything that moves under gravity's influence, from falling rain to launching rockets.",
          "index": 10,
          "is_paid": true,
          "label": "Gravitation ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPQxiUXVY/RzaTrf6mAHXY0Mx-fwqd8g/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Escape speed is the minimum speed an object needs to break free from the gravitational pull of a planet, moon, or other celestial body without any further propulsion. Essentially, it's the speed required for an object to overcome gravity and enter space. On Earth, if an object reaches this speed, it can escape Earth's gravity and move into outer space without falling back. The escape speed depends on the mass and size of the celestial body; larger and more massive bodies have higher escape speeds. For example, the escape speed on the Moon is much lower than on Earth because the Moon has less mass and gravitational pull. This concept is crucial in space exploration, as rockets must reach or exceed this speed to leave Earth and travel to other parts of the solar system.",
          "index": 10,
          "is_paid": true,
          "label": "Gravitation ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPQw2K9_E/awNMhlGg_PzDuGtT_fn5Rg/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "Geostationary satellites provide consistent coverage of a specific area, while polar satellites offer a comprehensive view of the entire Earth by passing over different regions during their orbit.",
          "index": 10,
          "is_paid": true,
          "label": "Gravitation ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPQ8jcCEY/rbMEKi6-LHXASl5oKHxC0w/view?embed",
          "totalTimeInMin": "120",
          "type": 10
        },
        {
          "description": "The mechanical properties of solids describe how materials respond to forces and stress. These properties include elasticity, plasticity, strength, toughness, and hardness. Elasticity is a material's ability to return to its original shape after being deformed, like a rubber band. Plasticity refers to a material's ability to undergo permanent deformation without breaking, like clay. Strength is the ability of a material to withstand an applied force without failure, such as steel in construction. Toughness is a material's ability to absorb energy and resist fracture, like the resilience of rubber. Lastly, hardness measures a material's resistance to scratching or indentation, like diamonds being one of the hardest known materials. These properties are essential for selecting materials in various engineering and construction applications, ensuring that the chosen material can perform effectively under specific conditions.",
          "index": 11,
          "is_paid": true,
          "label": "Mechanical properties of solids",
          "pdfLink": "https://www.canva.com/design/DAGPQ3N3zLo/UCqhgzqv8Z4PDFHALRbeqA/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "When studying the mechanical properties of solids, it's essential to consider several key points. First, understand the relationship between stress and strain, which helps determine how materials deform under force. Next, focus on the concepts of elasticity and plasticity, which define a material's ability to return to its original shape or undergo permanent deformation. The Young's modulus, shear modulus, and bulk modulus are critical parameters that quantify a material's stiffness and resistance to deformation. Additionally, it's important to recognize the significance of strength and toughness in evaluating a material's ability to withstand stress and absorb energy before breaking. Lastly, consider the factors influencing hardness, which determines a material's resistance to surface indentation or scratching. Understanding these aspects is crucial for selecting appropriate materials in engineering and construction, ensuring durability and safety in various applications.",
          "index": 11,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRLkGNZc/7LMqguQfs6EfzhlA3sZPtA/view?embed",
          "totalTimeInMin": "120",
          "type": 11
        },
        {
          "description": "Fluids, which include both liquids and gases, exhibit unique mechanical properties that determine how they behave under various conditions. One of the key properties is pressure, which is the force exerted per unit area on the surface of a fluid. Pressure in fluids is uniform in all directions and increases with depth due to the weight of the fluid above. Another important property is viscosity, a measure of a fluid's resistance to flow; thicker fluids like honey have higher viscosity compared to thinner ones like water. Buoyancy is the upward force exerted by a fluid on an object submerged in it, allowing objects to float.",
          "index": 12,
          "is_paid": true,
          "label": "Mechanical properties of fluids ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPRJ9GB1s/eIoi0P72hggCSNDBFeC5ZQ/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Streamline flow, also known as laminar flow, refers to the smooth and orderly movement of a fluid in which every particle follows a specific path or streamline. In this type of flow, the fluid particles move in parallel layers, with minimal mixing between them. Each layer of the fluid moves steadily, without any cross-currents or turbulence. This means that the velocity of the fluid at any given point remains constant over time. Streamline flow is typically observed in fluids moving at low velocities and through smooth, straight channels. It is important in engineering and fluid dynamics because it allows for precise calculations of fluid behavior.",
          "index": 12,
          "is_paid": true,
          "label": "Mechanical properties of fluids ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPRJIYD3M/zpDA23stfyrzQf4Q7oXJhw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Bernoulli's principle is a fundamental concept in fluid dynamics that describes the behavior of a fluid moving along a streamline. According to this principle, in a flowing fluid, an increase in the fluid's speed results in a decrease in its pressure and potential energy. Essentially, when a fluid moves faster, it exerts less pressure perpendicular to its flow. This principle helps explain various phenomena, such as how airplanes generate lift and why a shower curtain gets sucked inward when water flows from the showerhead.",
          "index": 12,
          "is_paid": true,
          "label": "Mechanical properties of fluids ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPRClSNMM/IWuD1hjnO59twj-uSPy-Ag/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Viscosity is a measure of a fluid's resistance to flow or deformation. It describes how thick or sticky a fluid is, with higher viscosity indicating a thicker fluid that flows more slowly, like honey. This property is crucial in many applications, such as in lubrication, where oils with appropriate viscosity are used to reduce friction between moving parts. Viscosity also plays a key role in the behavior of natural processes, like the flow of lava or blood in the human body.",
          "index": 12,
          "is_paid": true,
          "label": "Mechanical properties of fluids ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPRPQZgfc/Wop9kb-XuLpYbIkHTtXiQw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Reynolds number is a dimensionless value in fluid mechanics that helps predict how a fluid will flow, whether it will be smooth and orderly (laminar flow) or chaotic and mixed (turbulent flow). A low Reynolds number indicates laminar flow, while a high Reynolds number suggests turbulent flow. This number is crucial for designing and analyzing systems where fluid flow is involved, like in pipelines and aircraft.",
          "index": 12,
          "is_paid": true,
          "label": "Mechanical properties of fluids ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPRAf13PA/KbMmclJW5dTGBNtrO363MQ/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "Surface tension is a property of liquids that causes their surface to behave like a stretched elastic membrane. It arises because the molecules at the surface of the liquid experience a net inward force due to the cohesive attraction from the molecules below them. This property is important in various natural and industrial processes, from the formation of droplets to the movement of fluids in capillaries.",
          "index": 12,
          "is_paid": true,
          "label": "Mechanical properties of fluids ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPRAA3kfE/rQlZAOHePNKQSiNhyIJOBw/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "When studying the mechanical properties of fluids, several key concepts are important to understand. These include pressure, viscosity, buoyancy, and surface tension. Understanding these properties is essential for applications ranging from industrial processes to natural phenomena, providing insights into the behavior of fluids in different environments.",
          "index": 12,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRL-W7UE/-SMnZQWYrp_N2PskXwbm0A/view?embed",
          "totalTimeInMin": "120",
          "type": 12
        },
        {
          "description": "The thermal properties of matter refer to how substances respond to changes in temperature and how they transfer heat. One key property is specific heat capacity, which is the amount of heat required to raise the temperature of a unit mass of a substance by one degree Celsius. Materials with high specific heat capacity, like water, can absorb a lot of heat without a significant rise in temperature, making them useful for thermal regulation. Thermal conductivity describes how well a material conducts heat. Understanding these properties is crucial in many practical applications.",
          "index": 13,
          "is_paid": true,
          "label": "Thermal properties of Matter ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPRKoMcgI/srLO7v00fKsMbralA1KmfA/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Specific heat capacity indicates how much energy is needed to change a material's temperature. For example, metals heat up quickly due to their low specific heat capacity, while water requires more energy to heat up due to its high specific heat capacity. This property varies for different materials, depending on their molecular structure and bonding.",
          "index": 13,
          "is_paid": true,
          "label": "Thermal properties of Matter ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPRMv-MbU/F8plDKGYdyklrhH7kjjDdA/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Heat transfer is the process by which thermal energy moves from one place to another, occurring when there is a temperature difference. Heat can transfer through conduction, convection, and radiation. This process is essential in everyday life and drives natural phenomena like weather patterns.",
          "index": 13,
          "is_paid": true,
          "label": "Thermal properties of Matter ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPRJTMuAQ/Z6zQz75vgXU3mVxoQoRmSQ/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Points to Ponder in the context of the thermal properties of matter encourages reflection on how materials respond to temperature changes, the flow of heat, and thermal equilibrium. Consider the varying capacities of substances to store heat, how expansion and contraction occur, and the implications of these properties in engineering and climate science.",
          "index": 13,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRCuhvvI/zbT0J2KXdCJWj0EZuxkwPw/view?embed",
          "totalTimeInMin": "120",
          "type": 13
        },
        {
          "description": "Thermodynamics is the branch of physics that deals with the study of energy, heat, and their transformations. It explores how energy moves between systems and how it can be converted from one form to another. Thermodynamics is fundamental to understanding how engines work, how heat is transferred, and how energy is conserved in various systems.",
          "index": 14,
          "is_paid": true,
          "label": "Thermodynamics ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPRFfhHoQ/ADMVwPJsyKVuyZFsGymSCQ/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "The First Law of Thermodynamics, or the law of energy conservation, states that energy cannot be created or destroyed, only transferred or converted from one form to another. This means that the total energy of a closed system remains constant, highlighting how energy flows in everything from engines to ecosystems.",
          "index": 14,
          "is_paid": true,
          "label": "Thermodynamics ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPRF7FRZ0/_YHJLQhOI3KeJq9V2iFrpg/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "Thermodynamic state variables are the measurable properties that define the condition of a thermodynamic system, including pressure, volume, temperature, and internal energy. The equation of state mathematically relates these variables and helps model the behavior of systems under various conditions.",
          "index": 14,
          "is_paid": true,
          "label": "Thermodynamics ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPRJXyTaw/6wgTw-KJ-JhdCu7Ovgc-4A/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "A thermodynamic process describes how a system changes from one state to another, involving variations in state variables. Different types of processes, such as isothermal and adiabatic, follow specific rules that help us understand energy transfer and transformation within a system.",
          "index": 14,
          "is_paid": true,
          "label": "Thermodynamics ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPRLy2T6U/T82HbN6z2fFlf5e5RwToIg/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "The Second Law of Thermodynamics states that the total entropy of a closed system will always increase or remain constant over time. This law explains why energy naturally tends to disperse and highlights the limits on efficiency in engines and other systems.",
          "index": 14,
          "is_paid": true,
          "label": "Thermodynamics ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPRLKFSqE/yY_Dh70_nJkPz5qUZxarYw/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "This section encourages you to think deeply about the fundamental principles of thermodynamics, including energy conservation and entropy. It challenges you to consider real-world applications, such as why energy conversions are never 100% efficient and how these concepts govern everything from the weather to the functioning of the universe.",
          "index": 14,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRTyQPHI/1p4gvtaBL_GbDAWiE66CjQ/view?embed",
          "totalTimeInMin": "120",
          "type": 14
        },
        {
          "description": "Kinetic Theory is a scientific theory that explains the behavior of gases by considering them as a large number of small particles, primarily atoms or molecules, in constant, random motion. According to this theory, the temperature of a gas is directly related to the average kinetic energy of its particles, meaning that as the temperature increases, the particles move faster. Kinetic Theory also explains pressure as the result of collisions between the gas particles and the walls of their container.",
          "index": 15,
          "is_paid": true,
          "label": "Kinetic Theory ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPRalDa5U/YB3HqANnA-dwyb01sLWddA/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "The behavior of gases is governed by principles that describe how gases respond to changes in temperature, pressure, and volume. Gases are composed of tiny particles in constant motion, and their interactions are explained by the kinetic theory. Laws like Boyle's Law, Charles's Law, and the Ideal Gas Law mathematically relate these variables, helping predict gas behavior under different conditions.",
          "index": 15,
          "is_paid": true,
          "label": "Kinetic Theory ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPRROKok4/Ik3-dYv_xnbQ2LIx87VY5g/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "The Kinetic Theory of an Ideal Gas explains the behavior of an ideal gas by considering it as a collection of particles in constant motion. These particles are assumed to be perfectly elastic, meaning they do not lose energy during collisions. This theory provides a framework for understanding the properties of gases like pressure, temperature, and volume under idealized conditions.",
          "index": 15,
          "is_paid": true,
          "label": "Kinetic Theory ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPRXqgyyw/rZV5lmkY2xRmqiGRLkAe6w/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "The Law of Equipartition of Energy states that, at thermal equilibrium, the total energy in a system is equally distributed among its degrees of freedom. In an ideal gas, this law explains how energy is shared between translational, rotational, or vibrational motions, helping to understand specific heat capacities and other thermodynamic properties.",
          "index": 15,
          "is_paid": true,
          "label": "Kinetic Theory ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPRUPbaeU/4Pa4ZuxliyI7GYhG0yQW7Q/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "This section invites you to reflect on the fundamental aspects of Kinetic Theory, challenging you to consider how the random motion of particles explains gas behavior and how idealized assumptions translate into real-world phenomena. Engaging with these ideas enhances your understanding of how microscopic particle behavior governs the macroscopic world.",
          "index": 15,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRWlWpYU/NIbYotS9PuBCiZ41xUXt-g/view?embed",
          "totalTimeInMin": "120",
          "type": 15
        },
        {
          "description": "Oscillation refers to the repetitive back-and-forth motion of an object around a central point or equilibrium position. This motion can occur in systems like a swinging pendulum, a vibrating guitar string, or the movement of a mass attached to a spring. Oscillations are characterized by parameters such as amplitude (the maximum displacement from the equilibrium position), frequency (how often the oscillation occurs), and period (the time it takes to complete one full cycle). Understanding oscillation is essential in physics because it describes many natural and technological phenomena, from the simple motion of a child on a swing to the complex behavior of electromagnetic waves.",
          "index": 16,
          "is_paid": true,
          "label": "Oscillation ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPRQbXHT8/5P0NvEBG-tqUJDX4R0pMOQ/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Simple Harmonic Motion (SHM) is a type of oscillatory motion where an object moves back and forth around an equilibrium position in a way that the restoring force acting on it is directly proportional to its displacement and always directed towards that equilibrium. SHM is fundamental in understanding many physical systems, such as the vibrations of atoms in a solid, the motion of pendulums, and the behavior of sound waves.",
          "index": 16,
          "is_paid": true,
          "label": "Oscillation ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPRauFL8s/rkS5UC38hM37OvzWCh3Z7Q/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "In Simple Harmonic Motion (SHM), the velocity and acceleration of the oscillating object change continuously as it moves. The velocity is highest when the object passes through the equilibrium position and decreases to zero at the maximum displacement. The acceleration is maximum at the points of maximum displacement and zero at the equilibrium position, creating the smooth, repetitive motion characteristic of SHM.",
          "index": 16,
          "is_paid": true,
          "label": "Oscillation ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPRfCTGo8/Mo3mt9fE2kamhFcgqaKRgA/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "In Simple Harmonic Motion (SHM), the energy of the system is a combination of kinetic and potential energy, which constantly interchange as the object oscillates. At the equilibrium position, the kinetic energy is at its maximum, while the potential energy is zero. At maximum displacement, the potential energy is at its highest, while the kinetic energy is zero. This continuous exchange of energy demonstrates the conservation of energy in SHM.",
          "index": 16,
          "is_paid": true,
          "label": "Oscillation ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPRb9DmfQ/fDkjVZIfM4QYM72tU7bUFQ/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "This section encourages you to think deeply about the concept of oscillation, inviting you to explore how this back-and-forth motion appears in various physical systems, from simple pendulums to complex wave patterns. It challenges you to consider the factors that affect the frequency, amplitude, and energy of oscillations, and how these properties can be observed in real-world scenarios like musical instruments, clocks, and even the vibrations of molecules.",
          "index": 16,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRVqU3qU/grYI8utcMM75Tq75isyAww/view?embed",
          "totalTimeInMin": "120",
          "type": 16
        },
        {
          "description": "Waves are disturbances that transfer energy from one place to another without the permanent movement of the medium through which they travel. They can occur in various forms, such as mechanical waves (like sound waves traveling through air or water waves on the surface of a pond) and electromagnetic waves (like light or radio waves that can travel through a vacuum). Waves are characterized by their wavelength, frequency, amplitude, and speed, and they can interact with each other through phenomena like interference and diffraction. Waves are fundamental to many natural and technological processes, influencing everything from communication systems to the way we perceive sound and light.",
          "index": 17,
          "is_paid": true,
          "label": "Waves ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPRQD8fNk/GZb6GkkmxM1TJX0x4ZgZ8Q/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "The displacement relation in a progressive wave describes how the position of particles in the medium changes as the wave travels through it. In a progressive wave, the displacement of any point in the medium is a function of both time and position along the wave's path. This relation shows that as the wave moves, particles in the medium oscillate around their equilibrium positions, with the displacement varying sinusoidally. The wave’s amplitude determines the maximum displacement, while the wavelength and frequency dictate how quickly these oscillations occur. This relationship is key to understanding how energy is transmitted through the medium as the wave progresses.",
          "index": 17,
          "is_paid": true,
          "label": "Waves ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPRZ3iHQ4/gIJVpD4uJc72Zldy9mkYnA/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "The speed of a traveling wave refers to how fast the wave propagates through a medium. It is determined by the properties of the medium and the type of wave. For example, in a string, the speed of a wave depends on the tension in the string and its mass per unit length; in a sound wave, it depends on the density and elasticity of the medium, such as air or water. The speed of a wave is also related to its wavelength and frequency, with the speed being the product of these two quantities. Understanding wave speed is crucial for analyzing how waves transfer energy and information over distances, whether in mechanical waves like sound or electromagnetic waves like light.",
          "index": 17,
          "is_paid": true,
          "label": "Waves ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPRZzUE0M/Q_v9WRj-HdTi9XFCh2og7Q/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "The Principle of Superposition of Waves states that when two or more waves overlap in the same medium, the resulting wave at any point is the sum of the displacements of the individual waves at that point. This means that the waves combine without altering each other, and their effects simply add together. If the waves are in phase, their amplitudes reinforce each other, leading to constructive interference and a larger resultant wave. If they are out of phase, they can cancel each other out partially or completely, leading to destructive interference. This principle is fundamental in understanding complex wave behaviors, such as sound wave interference, light diffraction patterns, and the formation of standing waves.",
          "index": 17,
          "is_paid": true,
          "label": "Waves ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPRbdbibM/585CcC524ClkVIMcmlly8A/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Reflection of waves occurs when a wave encounters a boundary or obstacle and bounces back into the medium from which it came, rather than passing through the boundary. The reflected wave retains many of the properties of the original wave, such as its speed, frequency, and wavelength, but its direction changes. Depending on the nature of the boundary, the wave may reflect with a change in phase (inverting the wave) or without any phase change. Reflection of waves is a key concept in understanding phenomena like echoes in sound, the behavior of light in mirrors, and the creation of standing waves in confined spaces like musical instruments.",
          "index": 17,
          "is_paid": true,
          "label": "Waves ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPRSC8mng/jw5yTc3tUNCZ1Q1X1oOGLA/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Beats are a phenomenon that occurs when two sound waves of slightly different frequencies interfere with each other. When these waves overlap, they produce a new sound wave that alternates between constructive interference (where the waves reinforce each other, making the sound louder) and destructive interference (where the waves partially cancel each other, making the sound quieter). This results in a pulsating effect where the volume of the sound rises and falls, creating a rhythmic \"beat\" that can be heard. The frequency of the beats is equal to the difference between the frequencies of the two original sound waves. Beats are commonly heard in music when two similar notes are played together, and they are also used in tuning instruments.",
          "index": 17,
          "is_paid": true,
          "label": "Waves ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPRVRmHsk/NeIpFv6XrmZ8Z7Cif29qvQ/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "This section invites you to deeply consider the fascinating aspects of waves, such as how they transfer energy without transporting matter, the significance of wave properties like frequency, wavelength, and amplitude, and how different types of waves (mechanical and electromagnetic) behave in various mediums. It challenges you to think about the real-world applications of wave phenomena, such as sound waves in communication, light waves in optics, and the impact of wave interference patterns. Reflecting on these ideas can enhance your understanding of how waves are integral to both natural processes and modern technology, providing a deeper appreciation of their role in the world around us.",
          "index": 17,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPRXyDTrQ/WiE9D1_7W3SdrdXbPy8qcw/view?embed",
          "totalTimeInMin": "120",
          "type": 17
        },
        {
          "description": "Imagine a world where invisible forces are constantly at play, shaping the very fabric of our existence. Electric charges are like tiny, powerful particles that carry the essence of electricity within them. They come in two types: positive and negative, much like the two sides of a magnet. These charges have a natural tendency to attract or repel each other, creating an invisible dance of forces around them, known as electric fields. These fields are like the invisible hands that push or pull charges, influencing their motion and behavior. Understanding electric charges and fields not only unravels the mysteries of how electricity powers our world but also reveals the fundamental interactions that govern the universe. Whether it's the spark of a static shock or the flow of current in a circuit, it all begins with these tiny, charged particles and the fields they create.",
          "index": 18,
          "is_paid": true,
          "label": "Electric Charges and Fields ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGLkTWV7gs/LfbDQtWjtKi78217NOVeIA/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "An electric field is like the invisible force field surrounding a charged particle, similar to the gravitational field around a planet. Just as gravity pulls objects towards the Earth, an electric field exerts a force on other charged particles within its reach, pushing or pulling them depending on their charge. Picture it as the aura of influence that extends from a charged object, mapping out the direction and strength of the force it can apply to other charges. The electric field is not just a concept—it's a tangible force that drives the movement of charges in everything from lightning strikes to the functioning of your electronic devices. Understanding electric fields gives us insight into the hidden interactions that power our everyday lives, revealing the unseen architecture of the electromagnetic world.",
          "index": 18,
          "is_paid": true,
          "label": "Electric Charges and Fields ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGLyU91DsU/WW2bSagSsSYqkFu3nS70mw/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Electric flux is like a measure of how much electric field 'flows' through a given surface. Imagine electric field lines as invisible threads that weave through space. When these lines pass through a surface, we can count how many of them go through to understand the strength of the electric field in that area—this count is what we call electric flux. It's as if you were measuring the amount of wind passing through a window; the stronger the wind (or electric field) and the larger the window (or surface area), the more flux you'll observe. Electric flux helps us visualize and calculate the influence of electric fields over space, making it a key concept in understanding how electric fields interact with objects and charge distributions.",
          "index": 18,
          "is_paid": true,
          "label": "Electric Charges and Fields ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGL3iRxUPE/htVnbxsbG0d0G6cM3V7Emg/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "An electric dipole is like a tiny, two-sided magnet in the world of electricity. It consists of two equal and opposite charges, one positive and one negative, separated by a small distance. Imagine it as a barbell with a positive charge on one end and a negative charge on the other. This pair creates a unique electric field pattern, with lines spreading out from the positive charge and converging on the negative charge, forming a distinct figure-eight shape. Electric dipoles are found everywhere, from molecules like water to larger systems in electric circuits. They play a crucial role in understanding how electric fields interact with matter, influencing everything from the alignment of molecules in a material to the behavior of electromagnetic waves. The concept of an electric dipole gives us a deeper insight into the dual nature of electric forces and their effects on the world around us.",
          "index": 18,
          "is_paid": true,
          "label": "Electric Charges and Fields ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGL5LQmd0U/NH5hLHgflE0K7VHeP_zk_A/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "In the world of electricity, charges are not always neatly packaged in discrete particles. Sometimes, they are spread out over a surface, a line, or even throughout a volume—this is known as a continuous charge distribution. Imagine spreading butter evenly over a slice of bread; instead of individual lumps, the butter covers the entire surface smoothly. Similarly, in a continuous charge distribution, charges are distributed over a region, creating a continuous 'smear' of charge rather than distinct points. This distribution can be linear, surface-based, or volumetric, depending on how the charge is spread. Understanding continuous charge distributions is essential for calculating electric fields and potentials in real-world scenarios, where charges often aren’t isolated but rather spread out in a continuous manner, affecting how electric forces act over larger areas. This concept is key in fields like electrostatics and helps us model and predict the behavior of electric fields in various materials and structures.",
          "index": 18,
          "is_paid": true,
          "label": "Electric Charges and Fields ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPUnEEDzg/ZuAOvFh3Z4L1MUDZ4-Hq_g/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Gauss's Law is a powerful tool in the world of electromagnetism, allowing us to understand the relationship between electric charges and the electric field they produce. It states that the total electric flux passing through a closed surface is directly proportional to the charge enclosed within that surface. Imagine you have a bubble surrounding a charged object—Gauss's Law tells us that by measuring the electric field passing through the surface of that bubble, you can determine the total charge inside. This law is especially useful when dealing with symmetrical charge distributions, making complex calculations simpler and more intuitive. Whether it's the charge on a spherical shell or the field around a long, straight wire, Gauss's Law gives us a way to see the hidden connections between charge and field, revealing the elegance and simplicity behind electric forces in nature.",
          "index": 18,
          "is_paid": true,
          "label": "Electric Charges and Fields ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPUpuWYUc/3nBFasWcedprVFxJziUQ6g/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "As you delve deeper into the world of electric charges and fields, consider the fundamental nature of electric charges—how positive and negative charges interact to create the forces that shape our universe. The concept of the electric field, an invisible force field that surrounds a charge and influences other charges nearby, is key to understanding these interactions. Reflect on Coulomb’s Law, which quantifies the force between two point charges and reveals how this force changes with distance, offering a comparison to gravitational forces. The principle of superposition simplifies the calculation of electric fields in complex scenarios by allowing us to consider the total field as the sum of individual fields. Electric dipoles, with their unique behavior in external electric fields, play a crucial role in molecular structures and materials like dielectrics, affecting how they respond to electric forces. Finally, Gauss’s Law provides a powerful method for calculating electric fields, especially in cases of symmetrical charge distributions, revealing the elegance and simplicity underlying electric forces in nature.",
          "index": 18,
          "is_paid": true,
          "label": "Points to Ponder",
          "pdfLink": "https://www.canva.com/design/DAGPUmxvPOY/0HgclC4NBr0tD1klHHaZ1g/view?embed",
          "totalTimeInMin": "120",
          "type": 18
        },
        {
          "description": "Electrostatic potential is a measure of the potential energy per unit charge at a point in an electric field. It’s like the height of a hill that determines how much energy is needed to move an object to the top; in this case, it tells us how much work is required to bring a charge to a particular point in the field. The higher the potential, the more work needed. This concept is crucial in understanding how charges interact and move in electric fields.",
          "index": 19,
          "is_paid": true,
          "label": "Electrostatic potential and capacitance  ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGPUgoKjfM/CqouPWMr6Iiu9PUFiy4jDw/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Equipotential surfaces are like the contour lines on a topographic map, but instead of representing height, they represent regions where the electric potential is the same. Imagine these surfaces as invisible sheets that surround a charged object, where every point on a given surface has the same potential energy. This means that if you move a charge along an equipotential surface, no work is required because the electric potential remains constant. Equipotential surfaces are always perpendicular to electric field lines, reflecting the fact that the electric field does work when moving a charge between surfaces with different potentials. These surfaces help simplify the analysis of electric fields, making it easier to visualize how potential energy changes in a field and how charges interact with their surroundings. Understanding equipotential surfaces is key to mastering concepts like voltage, electric potential energy, and the behavior of charges in electric fields.",
          "index": 19,
          "is_paid": true,
          "label": "Electrostatic potential and capacitance  ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPUrcKE9k/d7TNDi9Y3Q4rYx_bY2b37Q/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "In the realm of electrostatics, conductors play a unique and fascinating role. A conductor is a material that allows free movement of electric charges within it, typically metals like copper or aluminum. When a conductor is placed in an electric field, the free electrons within it immediately begin to move in response to the field. This movement continues until the electric field inside the conductor is neutralized, reaching a state of electrostatic equilibrium. At this point, the electric field inside the conductor is zero, and any excess charge resides entirely on the surface. The surface of the conductor then becomes an equipotential surface, meaning that the electric potential is the same at every point on the surface. This redistribution of charge and the resulting behavior are key to understanding how conductors interact with electric fields, influencing everything from shielding sensitive electronics to the design of electrical circuits. The electrostatics of conductors reveals the subtle dance between charges and fields, demonstrating the remarkable ability of conductors to influence and control electric forces.",
          "index": 19,
          "is_paid": true,
          "label": "Electrostatic potential and capacitance  ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPUiT7fzc/9YhzF82F-OLCMbFnY-4NcQ/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Dielectrics are insulating materials that, unlike conductors, do not allow free movement of electric charges. However, they have a special property: when placed in an electric field, the molecules within a dielectric material become polarized. This means that the positive and negative charges within the molecules shift slightly in opposite directions, creating tiny dipoles throughout the material. This phenomenon, known as polarization, reduces the overall electric field within the dielectric and increases the material's ability to store electric energy. Dielectrics are crucial in capacitors, where they are placed between the conductive plates to increase the capacitor's capacitance. The extent of polarization depends on the nature of the dielectric material and the strength of the applied electric field. Understanding dielectrics and polarization helps us grasp how insulating materials interact with electric fields, enhancing their ability to store and manage electric energy in a wide range of applications, from electronics to power systems. These concepts are key to advancing technologies that rely on efficient energy storage and insulation.",
          "index": 19,
          "is_paid": true,
          "label": "Electrostatic potential and capacitance  ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPUmdUawI/2Xl7hHW8xdUbVCMgA866mw/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "A capacitor is a fundamental electronic component designed to store and release electrical energy. It consists of two conductive plates separated by an insulating material, known as a dielectric. When voltage is applied across the plates, an electric field is created, causing positive charge to accumulate on one plate and an equal negative charge on the other. This separation of charges allows the capacitor to store energy, which can be released when needed, making capacitors essential in smoothing out voltage fluctuations, filtering signals, and storing energy in circuits. Capacitance, on the other hand, is the measure of a capacitor's ability to store charge. It depends on the size and distance between the plates, as well as the type of dielectric material used. The greater the capacitance, the more charge the capacitor can store for a given voltage. Capacitance is measured in farads (F), with typical values ranging from picofarads (pF) to microfarads (µF) in everyday applications. Understanding capacitors and capacitance is crucial in electronics, as they play a vital role in everything from power supply regulation to signal processing, and energy storage in various devices.",
          "index": 19,
          "is_paid": true,
          "label": "Electrostatic potential and capacitance  ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPUsQcn3s/wA7Xx_xY1tWSIA72MpsijQ/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "When capacitors are connected together in a circuit, they can be arranged in two main ways: series and parallel. In a series combination, the capacitors are connected end-to-end, and the overall effect is that the total capacitance decreases. This is because the charge that flows through the circuit must pass through each capacitor, and the ability to store charge is shared among them. On the other hand, when capacitors are connected in parallel, they are connected side-by-side, and the total capacitance increases. In this arrangement, each capacitor stores charge independently, and their combined capacity to store energy adds up. Understanding these combinations is important for designing circuits where specific capacitance values are needed, enabling precise control over how electrical energy is stored and managed.",
          "index": 19,
          "is_paid": true,
          "label": "Electrostatic potential and capacitance  ( Part - F )",
          "pdfLink": "https://www.canva.com/design/DAGPUnqStI0/pKN0J690oa_ypfMd5IuWug/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "As you explore the concepts of electrostatics and capacitance, consider the foundational role of electric charges and their interactions, which form the basis of electrostatics. Reflect on how electric fields influence the behavior of charges and how these fields are manipulated in practical applications. The concept of electrostatic potential, which describes the work required to move a charge within an electric field, is crucial in understanding energy transfer in circuits.",
          "index": 19,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPUj3ZrvQ/ErzOfoFeffZ-7fu4KTZs1w/view?embed",
          "totalTimeInMin": "120",
          "type": 19
        },
        {
          "description": "Current electricity is the flow of electric charge through a conductor, such as a wire, driven by a difference in electric potential, often referred to as voltage. Unlike static electricity, where charges are stationary, current electricity involves the continuous movement of electrons through a material. This flow of electrons creates an electric current, which powers everything from household appliances to complex electronic devices.",
          "index": 20,
          "is_paid": true,
          "label": "Current electricity ( Part - A )",
          "pdfLink": "https://www.canva.com/design/DAGLf38CnYw/X6lDKpA5h0toT_DWrrUCZQ/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Ohm's Law is a fundamental principle in the study of electricity that describes the relationship between voltage, current, and resistance in an electrical circuit. According to Ohm's Law, the current flowing through a conductor between two points is directly proportional to the voltage across those points and inversely proportional to the resistance of the conductor. In simpler terms, if you increase the voltage, the current increases, provided the resistance remains the same. Conversely, if you increase the resistance, the current decreases for the same voltage.",
          "index": 20,
          "is_paid": true,
          "label": "Current electricity ( Part - B )",
          "pdfLink": "https://www.canva.com/design/DAGPUmTm3wo/cFQ0jxzsB4AN_OtFvzS-Aw/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Electrical energy is the lifeblood of modern technology, powering everything from the smallest gadgets to entire cities. It is the energy carried by moving electric charges in a circuit, and it can be converted into various forms such as light, heat, and motion, depending on the devices connected to the circuit. Whenever you switch on a light or charge your phone, you're tapping into electrical energy, transforming it into a useful form that powers your daily life.",
          "index": 20,
          "is_paid": true,
          "label": "Current electricity ( Part - C )",
          "pdfLink": "https://www.canva.com/design/DAGPUm3_NnA/VdqhTkZV4d5TtHOoVl6t0w/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "Kirchhoff's Laws are essential tools in understanding and analyzing complex electrical circuits. They consist of two fundamental principles: Kirchhoff's Current Law (KCL) and Kirchhoff's Voltage Law (KVL).",
          "index": 20,
          "is_paid": true,
          "label": "Current electricity ( Part - D )",
          "pdfLink": "https://www.canva.com/design/DAGPUgcQyok/ypXhevtMq1L0m8KsE3DkSA/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "The Wheatstone Bridge is a clever and precise electrical circuit used to measure unknown resistances with high accuracy. It consists of four resistors arranged in a diamond shape, with a power source applied across two opposite corners and a galvanometer (a sensitive current-measuring device) connected between the other two corners. The key idea behind the Wheatstone Bridge is balance: when the bridge is balanced, no current flows through the galvanometer, indicating that the ratio of the two known resistances on one side equals the ratio of the unknown resistance and a second known resistance on the other side.",
          "index": 20,
          "is_paid": true,
          "label": "Current electricity ( Part - E )",
          "pdfLink": "https://www.canva.com/design/DAGPUjjfd9c/DI8AX-vdVH9HXG1YH-QvAQ/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "description": "As you explore the concept of current electricity, consider the fundamental role that electric current plays in powering nearly all modern technology. Reflect on the movement of electrons through a conductor and how this flow is influenced by factors like voltage and resistance. Understanding how these elements interact is key to grasping how electrical circuits function, from the simplest battery-powered device to complex systems that power homes and industries.",
          "index": 20,
          "is_paid": true,
          "label": "Points to ponder",
          "pdfLink": "https://www.canva.com/design/DAGPUsML6yI/Y_otxP0HZxH1s9JMpR32oQ/view?embed",
          "totalTimeInMin": "120",
          "type": 20
        },
        {
          "label": "Moving charges and magnetism ( Part - A )",
          "description": "Moving charges and magnetism is a fundamental concept in physics that explores the relationship between electric currents and magnetic fields. When a charged particle, such as an electron, moves through a conductor, it generates a magnetic field around it. This magnetic field can interact with other magnetic fields, resulting in forces that can cause movement, known as electromagnetic forces. This principle is the foundation of many modern technologies, including electric motors, generators, and transformers. Understanding how moving charges create magnetic fields and how these fields interact is crucial for the study of electromagnetism and its applications in various devices.",
          "pdfLink": "https://www.canva.com/design/DAGPUwrEnoQ/oZoWuvTuQ2N2TSlNO9i8OA/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Moving charges and magnetism ( Part - B )",
          "description": "Motion in a magnetic field refers to the behavior of a charged particle when it moves through a magnetic field. When a charged particle, such as an electron or proton, enters a magnetic field, it experiences a force called the Lorentz force. This force acts perpendicular to both the velocity of the particle and the direction of the magnetic field, causing the particle to follow a curved path, typically a circular or spiral trajectory. The radius of this path depends on the particle's charge, velocity, and the strength of the magnetic field.",
          "pdfLink": "https://www.canva.com/design/DAGPU2pqDmU/jA3AgMteiLa-lcoYRfTTNQ/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Moving charges and magnetism ( Part - C )",
          "description": "Magnetic Field Due to a Current Element and the Biot-Savart Law is a fascinating topic in electromagnetism that shows how electric currents create magnetic fields. Imagine a tiny segment of a wire carrying an electric current – this small piece, known as a 'current element,' generates a magnetic field around it. The strength and direction of this magnetic field depend on the current, the length of the element, and its distance from the point where the field is being measured. The Biot-Savart Law provides a precise mathematical way to calculate this magnetic field.",
          "pdfLink": "https://www.canva.com/design/DAGPU_KcUr0/dP2op7sFOdSaWzuUt6F3tg/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Moving charges and magnetism ( Part - D )",
          "description": "Ampere's Circuital Law is a key principle in electromagnetism that helps us understand the relationship between electric currents and the magnetic fields they create. According to this law, the magnetic field around a closed loop is directly proportional to the total current passing through that loop. Imagine drawing an imaginary loop around a current-carrying conductor – the strength of the magnetic field along this loop is proportional to the current enclosed by the loop.",
          "pdfLink": "https://www.canva.com/design/DAGPUw0wvUU/klbE4STxSov9uTddW7nz6w/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Moving charges and magnetism ( Part - E )",
          "description": "A solenoid is a long, cylindrical coil of wire, often wrapped tightly around a metallic core. When an electric current flows through the solenoid, it generates a uniform magnetic field inside the coil, similar to the field of a bar magnet. This magnetic field is strong and concentrated within the coil, making solenoids useful in devices like electromagnets, relays, and inductors.",
          "pdfLink": "https://www.canva.com/design/DAGPUwTqYwQ/bY-pVNeglrUII9dlFgC3Qg/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Moving charges and magnetism ( Part - F )",
          "description": "When a rectangular loop carrying an electric current is placed in a magnetic field, it experiences a force that creates a torque. This torque tends to rotate the loop and is strongest when the plane of the loop is parallel to the magnetic field. The magnitude of the torque depends on the current in the loop, the area of the loop, the strength of the magnetic field, and the angle between the magnetic field and the plane of the loop.",
          "pdfLink": "https://www.canva.com/design/DAGPU98DKVk/v9ld958VvFWX79C8z22XlQ/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Moving charges and magnetism ( Part - G )",
          "description": "A magnetic dipole refers to a system that has a north and a south pole, similar to a tiny bar magnet. In the context of a current loop, the loop itself behaves like a magnetic dipole when it carries a current. The magnetic dipole moment is a vector quantity that points from the south to the north pole of the dipole and is proportional to the current in the loop and the area of the loop.",
          "pdfLink": "https://www.canva.com/design/DAGPU_tOF3Y/xfYEMtVg2pG7_jj8MJMJQQ/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Moving Charges and Magnetism delve into the essential concepts that connect electricity and magnetism. First, understand that a moving charge, such as an electron in a current-carrying wire, creates a magnetic field around it. The direction of this magnetic field can be determined using the right-hand rule. Next, consider how this magnetic field interacts with other magnetic fields, leading to forces that can move objects or even cause rotation, as seen in electric motors. It's also crucial to think about the role of fundamental laws, like Biot-Savart and Ampere’s Circuital Law, which allow us to calculate the magnetic field generated by currents. Finally, reflect on the applications of these principles in everyday technology, from simple devices like compasses to complex systems like generators and MRI machines.",
          "pdfLink": "https://www.canva.com/design/DAGPUx8s6rE/Amix1R26vEYCjhvC8gc5Ww/view?embed",
          "totalTimeInMin": "120",
          "type": 21,
          "is_paid": true
        },
        {
          "label": "Magnetism and matter ( Part - A )",
          "description": "Magnetism and Matter explores how materials respond to magnetic fields and the different types of magnetic behavior exhibited by various substances. At the core of this topic is the concept that all matter is influenced by magnetic fields to some extent, depending on the arrangement and motion of electrons within atoms. Materials can be classified into three main categories: diamagnetic, paramagnetic, and ferromagnetic.",
          "pdfLink": "https://www.canva.com/design/DAGPUwZfY60/DcZWFQWJ8TUQWhoA5ewJsg/view?embed",
          "totalTimeInMin": "120",
          "type": 22,
          "is_paid": true
        },
        {
          "label": "Magnetism and matter ( Part - B )",
          "description": "Electrostatic Analog refers to the comparison between electrostatic fields and magnetic fields, highlighting their similarities and differences. In both cases, forces are exerted at a distance, but while electrostatic fields arise from stationary electric charges, magnetic fields are produced by moving charges or currents. This analogy helps in understanding complex electromagnetic concepts by relating them to the more familiar principles of electrostatics.",
          "pdfLink": "https://www.canva.com/design/DAGPUxcXap4/LiPBFJIEcc9bYxcookiuEQ/view?embed",
          "totalTimeInMin": "120",
          "type": 22,
          "is_paid": true
        },
        {
          "label": "Magnetism and matter ( Part - C )",
          "description": "Magnetism and Magnetic Intensity are fundamental concepts in the study of how materials interact with magnetic fields. Magnetism is the property of materials that causes them to experience a force when placed in a magnetic field. This phenomenon is due to the motion of electrons in atoms, which creates tiny magnetic dipoles.",
          "pdfLink": "https://www.canva.com/design/DAGPU8RYZpM/P-4ekONK6pmV2vh6lI3KMA/view?embed",
          "totalTimeInMin": "120",
          "type": 22,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Magnetism and Matter encourage deeper reflection on how different materials respond to magnetic fields and the underlying principles of magnetism. Consider how materials are classified based on their magnetic properties: diamagnetic materials, which are weakly repelled by magnetic fields; paramagnetic materials, which are weakly attracted; and ferromagnetic materials, which are strongly attracted and can become permanent magnets.",
          "pdfLink": "https://www.canva.com/design/DAGPUydARXY/81mdvudE60cnhk4w22hruA/view?embed",
          "totalTimeInMin": "120",
          "type": 22,
          "is_paid": true
        },
        {
          "label": "Electromagnetic induction ( Part - A )",
          "description": "Electromagnetic Induction is a fundamental principle in physics that explains how a changing magnetic field can generate an electric current in a conductor. Discovered by Michael Faraday, this phenomenon is the basis for many modern technologies. According to Faraday's Law of Induction, when a conductor, such as a coil of wire, is exposed to a changing magnetic field, an electromotive force (EMF) is induced, causing a current to flow through the conductor. The strength of the induced EMF depends on the rate at which the magnetic field changes and the number of turns in the coil.",
          "pdfLink": "https://www.canva.com/design/DAGPU92yl6s/fjj8mYsoR6kqmxv4bXyVtA/view?embed",
          "totalTimeInMin": "120",
          "type": 23,
          "is_paid": true
        },
        {
          "label": "Electromagnetic induction ( Part - B )",
          "description": "Lenz's Law and the Conservation of Energy are closely related concepts in electromagnetism. Lenz's Law states that the direction of the induced current in a conductor due to a changing magnetic field is such that it creates a magnetic field opposing the change that produced it. In simpler terms, the induced current always acts to resist the change in the magnetic field that caused it. This opposition is nature's way of maintaining balance and ensuring that energy is conserved.",
          "pdfLink": "https://www.canva.com/design/DAGPUxxm9fA/NkYUmAQxrzTrqDapoHDQFw/view?embed",
          "totalTimeInMin": "120",
          "type": 23,
          "is_paid": true
        },
        {
          "label": "Electromagnetic induction ( Part - C )",
          "description": "Inductance is a property of an electrical conductor or circuit that describes its ability to store energy in the form of a magnetic field when an electric current flows through it. When the current in a conductor changes, it creates a changing magnetic field around the conductor, which induces an electromotive force (EMF) that opposes the change in current—this is known as self-inductance. The unit of inductance is the henry (H).",
          "pdfLink": "https://www.canva.com/design/DAGPU017Q9U/oRQnWHwDTtspWI247_u6YQ/view?embed",
          "totalTimeInMin": "120",
          "type": 23,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Electromagnetic Induction (EMI) invite deeper thinking about how changing magnetic fields induce electric currents and the broader implications of this phenomenon. Consider how Faraday’s Law of Induction forms the foundation of electromagnetic technology, explaining how generators convert mechanical energy into electrical energy. Reflect on the significance of Lenz’s Law, which ensures that the induced current opposes the change in magnetic flux, highlighting the principle of energy conservation in electromagnetic systems.",
          "pdfLink": "https://www.canva.com/design/DAGPU2qgmkQ/5YbGBsSXRpm3x885prK6DA/view?embed",
          "totalTimeInMin": "120",
          "type": 23,
          "is_paid": true
        },
        {
          "label": "Alternating current ( Part - A )",
          "description": "Alternating Current (AC) is a type of electric current that periodically reverses direction, unlike Direct Current (DC), which flows in a single direction. In an AC circuit, the voltage and current vary sinusoidally with time, meaning they oscillate between positive and negative values. This alternating nature allows AC to be easily transformed to different voltage levels, making it ideal for long-distance transmission of electrical power.",
          "pdfLink": "https://www.canva.com/design/DAGPVD-oOB8/0OmAjpbccFktY8WjvbwuGg/view?embed",
          "totalTimeInMin": "120",
          "type": 24,
          "is_paid": true
        },
        {
          "label": "Alternating current ( Part - B )",
          "description": "When an AC voltage is applied to an inductor, the behavior of the circuit is governed by the property of inductance. Inductors resist changes in current due to the magnetic field created around them when current flows through the coil. In an AC circuit, as the voltage alternates, the current also tries to change direction. However, the inductor opposes this change, causing the current to lag behind the voltage by a phase difference of 90 degrees. This means that in an AC circuit with a pure inductor, the voltage reaches its maximum and minimum values before the current does. The inductive reactance, which is the opposition offered by the inductor to the changing current, depends on the frequency of the AC and the inductance of the coil. Higher frequencies result in greater inductive reactance, making it harder for the current to change rapidly. This principle is fundamental in designing AC circuits, particularly in applications like filters, transformers, and inductive loads in power systems.",
          "pdfLink": "https://www.canva.com/design/DAGPVLPr4-Q/E2YQqlfShMlkQUspPQftxQ/view?embed",
          "totalTimeInMin": "120",
          "type": 24,
          "is_paid": true
        },
        {
          "label": "Alternating current ( Part - C )",
          "description": "When an AC voltage is applied to an LCR circuit—one that includes an inductor (L), a capacitor (C), and a resistor (R) connected in series or parallel—the behavior of the circuit becomes more complex due to the interplay between these components.",
          "pdfLink": "https://www.canva.com/design/DAGPVBmDEXI/V8LPZp9pKakPsBGkYJVpjw/view?embed",
          "totalTimeInMin": "120",
          "type": 24,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Alternating Current (AC) encourage a deeper reflection on the fundamental concepts and practical implications of AC in electrical systems. First, consider the significance of frequency in AC systems, which determines how many times the current reverses direction per second. This frequency impacts everything from the functioning of household appliances to the transmission of power over long distances.",
          "pdfLink": "https://www.canva.com/design/DAGPVBacsuM/RIkZ6nZK2f3khm-Cg9duvQ/view?embed",
          "totalTimeInMin": "120",
          "type": 24,
          "is_paid": true
        },
        {
          "label": "Electromagnetic waves",
          "description": "Electromagnetic waves are a type of wave that can travel through the vacuum of space, unlike sound waves, which require a medium. They are formed when electric and magnetic fields oscillate perpendicularly to each other and to the direction of wave propagation. This self-sustaining wave is the basis for all forms of electromagnetic radiation, including radio waves, microwaves, infrared, visible light, ultraviolet, X-rays, and gamma rays.",
          "pdfLink": "https://www.canva.com/design/DAGPVG2mq90/kz-mcGtHjvKseI2A_DDijw/view?embed",
          "totalTimeInMin": "120",
          "type": 25,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Electromagnetic Waves invite deeper reflection on the nature, behavior, and applications of these fundamental waves. First, consider the dual nature of electromagnetic waves, which exhibit both wave-like and particle-like properties. This wave-particle duality is crucial for understanding phenomena like light reflection, refraction, and the photoelectric effect.",
          "pdfLink": "https://www.canva.com/design/DAGPVFG9pPM/XuHTTi1KNRfDZvNvaXyfNw/view?embed",
          "totalTimeInMin": "120",
          "type": 25,
          "is_paid": true
        },
        {
          "label": "Ray Optics and optical instruments ( Part - A )",
          "description": "Ray Optics, or geometrical optics, is the study of light as rays that travel in straight lines and interact with surfaces through reflection and refraction. It explores how light behaves when it encounters mirrors, lenses, and other optical devices, leading to image formation, magnification, and phenomena like total internal reflection. By understanding the principles of ray optics, we can design and optimize various optical instruments, such as cameras, eyeglasses, microscopes, and telescopes, which are essential in both everyday life and scientific research.",
          "pdfLink": "https://www.canva.com/design/DAGPVDO3XVQ/oHfMKyLJLE3pYw1tzHBR3Q/view?embed",
          "totalTimeInMin": "120",
          "type": 26,
          "is_paid": true
        },
        {
          "label": "Ray Optics and optical instruments ( Part - B )",
          "description": "Refraction is the bending of light as it passes from one medium to another with a different density, such as from air to water or glass. This change in direction occurs because light travels at different speeds in different materials. When light enters a denser medium, it slows down and bends towards the normal; when it enters a less dense medium, it speeds up and bends away from the normal. This principle is key to optics, explaining lens behavior and phenomena like the apparent bending of objects underwater.",
          "pdfLink": "https://www.canva.com/design/DAGPVFx8BWk/fk-FdZmFnQAUhN0erRdQ3w/view?embed",
          "totalTimeInMin": "120",
          "type": 26,
          "is_paid": true
        },
        {
          "label": "Ray Optics and optical instruments ( Part - C )",
          "description": "Refraction at spherical surfaces and by lenses involves the bending of light as it passes through curved surfaces, leading to image formation. Convex surfaces cause light rays to converge, while concave surfaces cause them to diverge. Lenses utilize this principle to focus or spread light, enabling the creation of real or virtual images depending on the lens type and object position.",
          "pdfLink": "https://www.canva.com/design/DAGPVGV1S7w/ZbKZ3P6uEgbFk9qIlsjYOA/view?embed",
          "totalTimeInMin": "120",
          "type": 26,
          "is_paid": true
        },
        {
          "label": "Ray Optics and optical instruments ( Part - D )",
          "description": "Refraction through a prism occurs when light passes through a triangular-shaped material, bending at each surface. This bending causes light to spread into its constituent colors, a phenomenon known as dispersion. The degree of bending depends on the wavelength of the light, which is why a prism can split white light into a spectrum.",
          "pdfLink": "https://www.canva.com/design/DAGPVaQwWp4/O_mfS1893MeB0RY1tgBdAQ/view?embed",
          "totalTimeInMin": "120",
          "type": 26,
          "is_paid": true
        },
        {
          "label": "Ray Optics and optical instruments ( Part - E )",
          "description": "Optical instruments enhance or alter the perception of images using the principles of light. These include devices like magnifying glasses, microscopes, and telescopes, which rely on reflection and refraction to magnify and focus images, allowing us to observe tiny or distant objects.",
          "pdfLink": "https://www.canva.com/design/DAGPVX9o3ZI/Dcxejn4EC-1HiBUBmfJfkA/view?embed",
          "totalTimeInMin": "120",
          "type": 26,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Ray Optics encourage a deeper understanding of how light behaves and interacts with different surfaces and media. Reflect on the principles of reflection and refraction and the laws governing light's direction changes when encountering surfaces.",
          "pdfLink": "https://www.canva.com/design/DAGPVRXkjAw/plwIe-oHLPWmoXHwtYG51g/view?embed",
          "totalTimeInMin": "120",
          "type": 26,
          "is_paid": true
        },
        {
          "label": "Wave optics ( Part - A )",
          "description": "Wave Optics, also known as physical optics, is the branch of optics that studies the behavior of light as a wave, rather than as rays. Unlike Ray Optics, which focuses on the straight-line propagation of light, Wave Optics explains phenomena that arise from the wave nature of light, such as interference, diffraction, and polarization.",
          "pdfLink": "https://www.canva.com/design/DAGPVb9QlSQ/_epfj72tO56FXhijH4pwmA/view?embed",
          "totalTimeInMin": "120",
          "type": 27,
          "is_paid": true
        },
        {
          "label": "Wave optics ( Part - B )",
          "description": "Coherent and Incoherent Addition of Waves refers to how waves combine depending on their phase relationship. This concept is fundamental in understanding interference patterns and the behavior of light waves.",
          "pdfLink": "https://www.canva.com/design/DAGPVduX-a0/tX8Fvw8lWtIoF9VjDNtKXA/view?embed",
          "totalTimeInMin": "120",
          "type": 27,
          "is_paid": true
        },
        {
          "label": "Wave optics ( Part - C )",
          "description": "Diffraction is a wave phenomenon that occurs when light encounters an obstacle or passes through a narrow opening, causing the wave to spread out and bend around the edges. This key concept in wave optics is responsible for many everyday phenomena and plays a crucial role in the design of optical instruments.",
          "pdfLink": "https://www.canva.com/design/DAGPVTPoiKg/0GNBruH-uaC6bJJPnuhBBg/view?embed",
          "totalTimeInMin": "120",
          "type": 27,
          "is_paid": true
        },
        {
          "label": "Wave optics ( Part - D )",
          "description": "Polarization is a wave phenomenon that describes the orientation of the oscillations of a light wave relative to its direction of travel. Understanding polarization helps in various applications, including sunglasses and photography.",
          "pdfLink": "https://www.canva.com/design/DAGPVeb0xZk/SfaYSC8pqhjo9Xzy1hg9Lg/view?embed",
          "totalTimeInMin": "120",
          "type": 27,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Wave Optics invite reflection on the wave nature of light and its implications for understanding various optical phenomena. Consider how interference demonstrates that light waves can combine to produce patterns of constructive and destructive interference.",
          "pdfLink": "https://www.canva.com/design/DAGPVVP47lo/3B1B0JJnq0NV9FviEktX-g/view?embed",
          "totalTimeInMin": "120",
          "type": 27,
          "is_paid": true
        },
        {
          "label": "Dual nature of matter and radiation ( Part - A )",
          "description": "The Dual Nature of Matter and Radiation is a fundamental concept in quantum mechanics that reveals the surprising dual behavior of both particles and waves. Traditionally, matter was thought to consist of particles, like electrons, while radiation (such as light) was understood as a wave.",
          "pdfLink": "https://www.canva.com/design/DAGPVWSHiY4/yIoLsy1xyRcvFEZg0uG8ow/view?embed",
          "totalTimeInMin": "120",
          "type": 28,
          "is_paid": true
        },
        {
          "label": "Dual nature of matter and radiation ( Part - B )",
          "description": "The experimental study of the photoelectric effect was a pivotal experiment in physics that provided clear evidence of the quantum nature of light, where electrons are ejected from a metal surface when light shines on it.",
          "pdfLink": "https://www.canva.com/design/DAGPVTPu7Jg/oJTfthYiMxA0jH2XSHrWIA/view?embed",
          "totalTimeInMin": "120",
          "type": 28,
          "is_paid": true
        },
        {
          "label": "Dual nature of matter and radiation ( Part - C )",
          "description": "The Photoelectric Effect and Wave Theory of Light marked a significant turning point in understanding light's nature. This phenomenon could not be explained by classical wave theory and led to Einstein’s proposal of energy quanta (photons).",
          "pdfLink": "https://www.canva.com/design/DAGPVY9mp34/JZxC9O5jbRuj2x_gRU9O5w/view?embed",
          "totalTimeInMin": "120",
          "type": 28,
          "is_paid": true
        },
        {
          "label": "Dual nature of matter and radiation ( Part - D )",
          "description": "The Particle Nature of Light refers to the concept that light, traditionally thought to behave solely as a wave, also exhibits characteristics of particles known as photons, the smallest discrete unit of light.",
          "pdfLink": "https://www.canva.com/design/DAGPVfxOto4/UYTg2G71Gm5MYbhca4UAFg/view?embed",
          "totalTimeInMin": "120",
          "type": 28,
          "is_paid": true
        },
        {
          "label": "Dual nature of matter and radiation ( Part - E )",
          "description": "The Davisson and Germer experiment provided direct evidence of the wave nature of electrons, demonstrating that particles can exhibit wave-like behavior, characterized by a wavelength.",
          "pdfLink": "https://www.canva.com/design/DAGPVQkFNZI/I1U4zbSsc_XADREt0b8swA/view?embed",
          "totalTimeInMin": "120",
          "type": 28,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in the Dual Nature of Matter and Radiation invite deep reflection on quantum mechanics' principles, highlighting how particles and waves are two aspects of the same reality.",
          "pdfLink": "https://www.canva.com/design/DAGPVT7s7PA/QOdegL4fuXtO5Cw67Ko_Ww/view?embed",
          "totalTimeInMin": "120",
          "type": 28,
          "is_paid": true
        },
        {
          "label": "Atoms ( Part - A )",
          "description": "An atom is the basic unit of matter and the defining structure of elements. It is composed of three primary particles: protons, neutrons, and electrons. At the center of the atom is the nucleus, which contains positively charged protons and neutral neutrons.",
          "pdfLink": "https://www.canva.com/design/DAGPVSRbrUY/zYdpEvbFHO30kKC9ZwD57A/view?embed",
          "totalTimeInMin": "120",
          "type": 29,
          "is_paid": true
        },
        {
          "label": "Atoms ( Part - B )",
          "description": "Atoms are incredibly small, typically about 0.1 to 0.5 nanometers in diameter. Despite their small size, atoms are the building blocks of all matter, forming everything we see around us by combining in various ways to create molecules and compounds.",
          "pdfLink": "https://www.canva.com/design/DAGPVT4sGxA/JmBrKfeB2wECNbuAJN1Wxg/view?embed",
          "totalTimeInMin": "120",
          "type": 29,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in the Study of Atoms invite you to reflect on the fundamental nature and complexity of the smallest units of matter. Consider how the structure of the atom—with a dense nucleus of protons and neutrons surrounded by a cloud of electrons—determines the identity and behavior of elements.",
          "pdfLink": "https://www.canva.com/design/DAGPVQIMAWk/MNXTyTNgLNe1o9xLhITSig/view?embed",
          "totalTimeInMin": "120",
          "type": 29,
          "is_paid": true
        },
        {
          "label": "Nuclei ( Part - A )",
          "description": "The Nuclei chapter delves into the core of the atom, exploring the structure, properties, and behavior of atomic nuclei. The nucleus, found at the heart of every atom, is composed of protons and neutrons, collectively known as nucleons.",
          "pdfLink": "https://www.canva.com/design/DAGPVQFCa1s/G8tqx2SIv6eGIXnAbKoGwg/view?embed",
          "totalTimeInMin": "120",
          "type": 30,
          "is_paid": true
        },
        {
          "label": "Nuclei ( Part - B )",
          "description": "These nucleons are held together by the strong nuclear force, one of the fundamental forces of nature, which acts over very short distances but is incredibly powerful, overcoming the repulsive electromagnetic force between positively charged protons.",
          "pdfLink": "https://www.canva.com/design/DAGPVZEBTRY/a5zMSfDCTjOoxwYTLrmLxg/view?embed",
          "totalTimeInMin": "120",
          "type": 30,
          "is_paid": true
        },
        {
          "label": "Nuclei ( Part - C )",
          "description": "Understanding mass-energy equivalence and nuclear binding energy is crucial for explaining the stability of elements, the energy production in stars, and the potential of nuclear power as an energy source.",
          "pdfLink": "https://www.canva.com/design/DAGPVTLNLIw/7fplOEtACyomfthdo1tN_A/view?embed",
          "totalTimeInMin": "120",
          "type": 30,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in the Nuclei chapter encourage a deeper exploration of the fundamental forces and processes at the heart of atomic nuclei. Reflect on the strong nuclear force, which binds protons and neutrons together in the nucleus despite the repulsive electromagnetic force between positively charged protons.",
          "pdfLink": "https://www.canva.com/design/DAGPVdDJ6Xw/8PUpZriD5zcHwaD6_80IqQ/view?embed",
          "totalTimeInMin": "120",
          "type": 30,
          "is_paid": true
        },
        {
          "label": "Devices and simple circuits ( Part - A )",
          "description": "The Semiconductor Electronics: Materials, Devices, and Simple Circuits chapter explores the fascinating world of semiconductors and their pivotal role in modern electronics. Semiconductors are materials with electrical conductivity between that of conductors (like metals) and insulators (like rubber). The most commonly used semiconductor materials are silicon and germanium. These materials have unique properties that can be manipulated by adding impurities, a process known as doping, to create p-type (positive) and n-type (negative) semiconductors.",
          "pdfLink": "https://www.canva.com/design/DAGPVhUSgqc/jncdaVdm0ak7SeTNOp6r0Q/view?embed",
          "totalTimeInMin": "120",
          "type": 31,
          "is_paid": true
        },
        {
          "label": "Devices and simple circuits ( Part - B )",
          "description": "An intrinsic semiconductor is a pure semiconductor material, such as silicon or germanium, that has not been doped with any impurities. In its intrinsic form, the semiconductor's electrical properties are entirely determined by the material itself, rather than by any external modifications.",
          "pdfLink": "https://www.canva.com/design/DAGPVsl8m08/5eFw9DiFjP6mLZo2w4_s-g/view?embed",
          "totalTimeInMin": "120",
          "type": 31,
          "is_paid": true
        },
        {
          "label": "Devices and simple circuits ( Part - C )",
          "description": "A p-n junction is a fundamental building block in semiconductor electronics, formed when p-type and n-type semiconductors are brought together. In a p-type semiconductor, the majority charge carriers are positive holes, while in an n-type semiconductor, the majority charge carriers are negative electrons. When these two types of materials are joined, they create a p-n junction with unique electrical properties.",
          "pdfLink": "https://www.canva.com/design/DAGPVmg59OU/8Qg3hLrjhj0kX2HTIiXDLQ/view?embed",
          "totalTimeInMin": "120",
          "type": 31,
          "is_paid": true
        },
        {
          "label": "Devices and simple circuits ( Part - D )",
          "description": "The application of a junction diode as a rectifier is one of its most important uses in electronics, particularly in converting alternating current (AC) to direct current (DC). A rectifier is an electronic device that allows current to flow in only one direction, effectively converting the AC voltage into a DC voltage that flows in a single direction.",
          "pdfLink": "https://www.canva.com/design/DAGPVnNdmg4/A8D9zTiKhlq2CCBmKOrgZg/view?embed",
          "totalTimeInMin": "120",
          "type": 31,
          "is_paid": true
        },
        {
          "label": "Points to ponder",
          "description": "Points to Ponder in Semiconductor Electronics Devices encourage deeper reflection on the principles and applications that underpin modern electronics. Consider how semiconductors, with their unique ability to control electrical conductivity through doping, form the foundation of all electronic devices.",
          "pdfLink": "https://www.canva.com/design/DAGPViiyhD0/Jma5v05OvribbNFmHTEZrA/view?embed",
          "totalTimeInMin": "120",
          "type": 31,
          "is_paid": true
        }
      ]
    }
  ];

  Future<void> addData() async {
    for (var v in data){
      Map<String,dynamic> d1 = {
        'icon':v['icon'],
        'label':v['label'],
        'is_paid':v['is_paid'],
        'subject_type':v['subject_type'],
      };

      CollectionReference collectionRef = FirebaseFirestore.instance.collection('subject');
      DocumentReference docRef = await collectionRef.add(d1);
      String documentId = docRef.id;

      List<Map<String,dynamic>> chapters = v['chapters'];
      for(var i in chapters){
        CollectionReference c1 = FirebaseFirestore.instance.collection('subject').doc(documentId).collection('chapters');
        await c1.add(i);
      }
    }
  }
}