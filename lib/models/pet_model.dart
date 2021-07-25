class PetsModel {
  String image;
  String name;
  String category;
  String age;
  String gender;
  String location;
  String weight;
  String story;
  String ownerName;
  /*
  owner_avatar
  story
  created_at
  */

  PetsModel({
    required this.image,
    required this.name,
    required this.category,
    required this.age,
    required this.gender,
    required this.location,
    required this.weight,
    required this.story,
    required this.ownerName,
  });
}

var petsData = [
  PetsModel(
    image:
        'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Kitty',
    category: 'Cat',
    age: '8 years',
    gender: 'Female',
    location: '3 km',
    weight: '12 kg',
    story:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nisi tellus, ultricies in volutpat id, euismod vel justo. Proin justo turpis, consequat ut sem eu, auctor rhoncus est. Donec vestibulum diam ut lectus consectetur vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam sollicitudin tellus eu erat mattis lacinia. Sed sit amet dapibus eros. Nulla gravida sed nisi eu molestie. Vestibulum pretium ex vitae leo consectetur pellentesque. Morbi quis lectus molestie, placerat augue at, vestibulum orci. Nullam rhoncus eu est in ultricies. Sed pretium cursus elit vitae blandit. Cras velit est, faucibus ut dictum ut, lacinia eu felis. Suspendisse a aliquam dui.',
    ownerName: 'Roderick Newman',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/1472999/pexels-photo-1472999.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Milo',
    category: 'Cat',
    age: '9 months',
    gender: 'Male',
    location: '4 km',
    weight: '3 kg',
    story:
        'Nunc hendrerit dolor est, ut tempus mauris pretium vel. Ut molestie felis sed tempor tincidunt. Aliquam nibh lorem, viverra sed varius nec, varius eu purus. In venenatis sit amet enim et tincidunt. Maecenas quis velit scelerisque, vulputate elit id, laoreet ipsum. Suspendisse volutpat nunc ut fermentum scelerisque. Curabitur vel leo feugiat, fermentum massa sit amet, tristique nisi. Phasellus tincidunt arcu a augue finibus ullamcorper. Sed felis dui, sodales sed tortor eget, pretium maximus quam. Aenean quis consequat sapien.',
    ownerName: 'Winona Nunez',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/3860304/pexels-photo-3860304.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'River',
    category: 'Dog',
    age: '11 months',
    gender: 'Male',
    location: '8 km',
    weight: '5 kg',
    story:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nisi tellus, ultricies in volutpat id, euismod vel justo. Proin justo turpis, consequat ut sem eu, auctor rhoncus est. Donec vestibulum diam ut lectus consectetur vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam sollicitudin tellus eu erat mattis lacinia. Sed sit amet dapibus eros. Nulla gravida sed nisi eu molestie. Vestibulum pretium ex vitae leo consectetur pellentesque.',
    ownerName: 'Alger Hewitt',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/96442/pexels-photo-96442.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Clover',
    category: 'Rabbit',
    age: '1 year',
    gender: 'Female',
    location: '12 km',
    weight: '3 kg',
    story:
        'Vestibulum sed eros mauris. Suspendisse feugiat accumsan tellus a vehicula. Vivamus a tempus mauris. Vestibulum viverra mattis augue sed pellentesque. Fusce et neque auctor, pellentesque erat non, accumsan sem. Nam vestibulum tempus placerat. Sed euismod sagittis massa vitae rutrum. Morbi eu leo at massa mollis convallis. In id sem laoreet, venenatis risus at, ultricies augue. Aenean vitae mi arcu. Suspendisse potenti. Curabitur iaculis quam quis urna consequat, a tempor erat tincidunt. Etiam eu malesuada mauris, sed semper nisi.',
    ownerName: 'Wallace Sowle',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/691583/pexels-photo-691583.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Leo',
    category: 'Cat',
    age: '1 year',
    gender: 'Male',
    location: '13 km',
    weight: '6 kg',
    story:
        'Nulla tincidunt ante quis tortor aliquam ultricies. Etiam volutpat lectus vitae ullamcorper tempus. Phasellus sodales tempus leo at consectetur. Praesent finibus sapien nec sapien elementum lacinia. Etiam vitae venenatis tortor. Phasellus est enim, interdum vel mauris at, venenatis feugiat lorem. Cras sit amet porttitor lectus. Morbi ac auctor sem.',
    ownerName: 'Gina Mccoy',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/3432929/pexels-photo-3432929.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Patty',
    category: 'Hamster',
    age: '7 months',
    gender: 'Female',
    location: '5 km',
    weight: '2 kg',
    story:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nisi tellus, ultricies in volutpat id, euismod vel justo. Proin justo turpis, consequat ut sem eu, auctor rhoncus est. Donec vestibulum diam ut lectus consectetur vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam sollicitudin tellus eu erat mattis lacinia. Sed sit amet dapibus eros. Nulla gravida sed nisi eu molestie. Vestibulum pretium ex vitae leo consectetur pellentesque. Morbi quis lectus molestie, placerat augue at, vestibulum orci.',
    ownerName: 'Simona Leonard',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/1499344/pexels-photo-1499344.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Luna',
    category: 'Cat',
    age: '5 years',
    gender: 'Female',
    location: '16 km',
    weight: '9 kg',
    story:
        'In velit velit, ullamcorper sit amet tortor ac, tempor volutpat ante. Proin scelerisque tellus pellentesque mauris commodo egestas. Etiam condimentum semper vestibulum. Pellentesque aliquam iaculis erat, id varius ex eleifend vitae. Proin sit amet turpis dignissim, consequat risus ut, volutpat massa. Pellentesque porttitor, eros eu ullamcorper ultricies, ex lectus blandit tellus, nec ornare nunc lorem id lectus. Donec finibus, purus ac suscipit iaculis, nibh lorem placerat orci, a imperdiet ipsum metus quis orci. Mauris congue nulla gravida, semper est quis, iaculis lorem. Vestibulum tempor in leo vitae iaculis. Cras ligula orci, imperdiet et arcu sit amet, volutpat eleifend risus. Curabitur at dolor eu dui iaculis malesuada. Sed fringilla metus ac elit ornare, at porta metus fringilla.',
    ownerName: 'Ida Berry',
  ),
  PetsModel(
    image:
        'https://images.unsplash.com/photo-1625063858703-064edf97ef8f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJldHRhJTIwZmlzaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    name: 'Blu',
    category: 'Cat',
    age: '5 months',
    gender: 'Female',
    location: '20 km',
    weight: '1 kg',
    story:
        'Nulla et quam vel arcu fringilla euismod hendrerit eget dui. Nam nec erat at purus convallis hendrerit a ac lorem. Sed dignissim dui sapien, a lacinia tortor commodo ut. Praesent sodales venenatis nisi, ut volutpat ligula suscipit ut. Suspendisse ornare leo non sem mattis, nec convallis sem porta. Phasellus tempus mi diam, et consectetur lacus suscipit ac. Fusce euismod vestibulum convallis. Nullam ullamcorper luctus ligula. Morbi sed quam enim. Phasellus quis condimentum ipsum. Proin suscipit semper lacus ac venenatis. Ut ipsum mauris, tempor in tortor ut, lobortis laoreet lacus. Etiam neque lacus, sodales sit amet laoreet sed, luctus quis eros.',
    ownerName: 'Kingsley Erickson',
  ),
  PetsModel(
    image:
        'https://images.pexels.com/photos/1605481/pexels-photo-1605481.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    name: 'Max',
    category: 'Cat',
    age: '4 years',
    gender: 'Male',
    location: '8 km',
    weight: '9 kg',
    story:
        'Morbi mauris nisi, posuere sed turpis sit amet, efficitur dapibus nisi. Praesent viverra elit quam, sit amet facilisis justo tristique sed. Integer rhoncus aliquam commodo. Vivamus quis convallis eros. Morbi molestie, metus in interdum elementum, arcu augue vehicula justo, id iaculis nibh risus ac massa. Vestibulum commodo, risus eu aliquet maximus, mi dui sagittis risus, in viverra nibh orci et enim. Phasellus vel neque ac purus eleifend convallis. Curabitur suscipit urna lacus, a sodales ex rutrum vel. Etiam vitae tristique metus. Vivamus ultrices mauris vel tellus lacinia, quis fermentum turpis tincidunt.',
    ownerName: 'Ella Franklin',
  ),
  PetsModel(
    image:
        'https://images.unsplash.com/photo-1596023070844-34e5ea45576b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFncGllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    name: 'Harley',
    category: 'Bird',
    age: '1 year',
    gender: 'Male',
    location: '13 km',
    weight: '1 kg',
    story:
        'Cras molestie erat ut molestie sodales. Vivamus in quam ipsum. Phasellus et consectetur felis. In feugiat eget lorem mollis auctor. Integer vel mauris massa. Quisque euismod lorem vel tellus lobortis, et congue neque laoreet. Etiam venenatis dictum ipsum, vehicula faucibus erat tincidunt et. In dictum, libero sed maximus scelerisque, massa sem condimentum risus, et dictum nibh nulla ut nisl. Etiam iaculis malesuada varius. Etiam efficitur, odio id vestibulum iaculis, justo metus imperdiet justo, ut venenatis purus lorem et magna. Etiam convallis urna rhoncus, accumsan quam vitae, semper libero. Aliquam pharetra augue vel velit lobortis, et sodales leo scelerisque. Suspendisse ex quam, posuere vel magna sed, commodo lacinia ante. Cras vel elit sed lorem tempor gravida vel ut libero.',
    ownerName: 'Dane Malone',
  ),
];
