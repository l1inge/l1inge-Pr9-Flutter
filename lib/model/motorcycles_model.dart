class MotorcyclesModel {
  final String make;
  final String model;
  final String year;
  final String type;
  final String cooling;
  final String transmission;

  MotorcyclesModel(
      {required this.make,
      required this.model,
      required this.type,
      required this.year,
      required this.cooling,
      required this.transmission});

  factory MotorcyclesModel.fromJson(Map<String, dynamic> json) {
    return MotorcyclesModel(
        make: json['make'],
        model: json['model'],
        type: json['type'],
        year: json['year'],
        cooling: json['cooling'],
        transmission: json['transmission']);
  }
}





/*
[
  {
    "make": "Kawasaki",
    "model": "Ninja 650 ",
    "year": "2022",
    "type": "Sport",
    "displacement": "649.0 ccm (39.60 cubic inches)",
    "engine": "Twin, four-stroke",
    "power": "52.3 HP (38.2  kW)) @ 8000 RPM",
    "torque": "56.0 Nm (5.7 kgf-m or 41.3 ft.lbs) @ 4000 RPM",
    "compression": "10.8:1",
    "bore_stroke": "83.0 x 60.0 mm (3.3 x 2.4 inches)",
    "valves_per_cylinder": "4",
    "fuel_system": "Injection. DFI® with dual 36mm Keihin throttle bodies",
    "fuel_control": "Double Overhead Cams/Twin Cam (DOHC)",
    "ignition": "TCBI with digital advance",
    "lubrication": "Forced lubrication, semi-dry sump",
    "cooling": "Liquid",
    "gearbox": "6-speed",
    "transmission": "Chain   (final drive)",
    "clutch": "Assist  and  Slipper Clutch",
    "frame": "Trellis, high-tensile steel",
    "front_suspension": "41mm hydraulic telescopic fork",
    "front_wheel_travel": "124 mm (4.9 inches)",
    "rear_suspension": "Horizontal back-link with adjustable spring preload",
    "rear_wheel_travel": "130 mm (5.1 inches)",
    "front_tire": "120/70-17 ",
    "rear_tire": "160/60-17 ",
    "front_brakes": "Double disc. Petal discs and two-piston calipers. Optional ABS.                                  ",
    "rear_brakes": "Single disc. Petal disc and single piston caliper. Optional ABS.                               ",
    "total_weight": "192.1 kg (423.4 pounds)",
    "seat_height": "790 mm (31.1 inches) If adjustable, lowest setting.",
    "total_height": "1146 mm (45.1 inches)",
    "total_length": "2055 mm (80.9 inches)",
    "total_width": "739 mm (29.1 inches)",
    "ground_clearance": "130 mm (5.1 inches)",
    "wheelbase": "1410 mm (55.5 inches)",
    "fuel_capacity": "15.14 litres (4.00 US gallons)",
    "starter": "Electric"
  },
  ...
]
*/
