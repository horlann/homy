import 'dart:ui';

enum OrderStatus {
  accepted,
  inProgress,
  handedOverByCourier,
  completed,
  cancelled,
  collected
}

extension OrderStatusToText on OrderStatus {
  bool get isActive => (this == OrderStatus.accepted ||
      this == OrderStatus.inProgress ||
      this == OrderStatus.handedOverByCourier);

  String toText() {
    switch (this) {
      //todo
      case OrderStatus.accepted:
        return "Прийнято";
      case OrderStatus.inProgress:
        return "Збирається";
      case OrderStatus.handedOverByCourier:
        return "Доставляється";
      case OrderStatus.completed:
        return "Виконано";
      case OrderStatus.cancelled:
        return "Скасоване";
      case OrderStatus.collected:
        return "Зібране";
    }
  }

  Color toColor() {
    switch (this) {
      case OrderStatus.accepted:
        return const Color(0xffFFD8CF);
      case OrderStatus.inProgress:
        return const Color(0xffFFF5BF);
      case OrderStatus.handedOverByCourier:
        return const Color(0xffE1E6FF);
      case OrderStatus.completed:
        return const Color(0xffE7F4EC);
      case OrderStatus.collected:
        return const Color(0xffE1E6FF);
      case OrderStatus.cancelled:
        return const Color(0xffEBEBEB);
    }
  }
}
