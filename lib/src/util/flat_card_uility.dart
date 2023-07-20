import 'dart:math';

const baseOffset = 0.1;

// This is needed to avoid too sparse cards when there are too few
double offSet(int childrenIndex, int childrenLength) {
  final offsetByChildrenLength = (childrenIndex / (childrenLength - 1));
  final fewCardsOffset = childrenIndex * baseOffset;

  return min(offsetByChildrenLength, fewCardsOffset);
}