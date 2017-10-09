/*
import {ascending} from "./ascending";

export function bisector(compare) {
  if (compare.length === 1) compare = ascendingComparator(compare);
  return {
    left: function(a, x, lo, hi) {
      if (lo == null) lo = 0;
      if (hi == null) hi = a.length;
      while (lo < hi) {
        var mid = lo + hi >>> 1;
        if (compare(a[mid], x) < 0) lo = mid + 1;
        else hi = mid;
      }
      return lo;
    },
    right: function(a, x, lo, hi) {
      if (lo == null) lo = 0;
      if (hi == null) hi = a.length;
      while (lo < hi) {
        var mid = lo + hi >>> 1;
        if (compare(a[mid], x) > 0) hi = mid;
        else lo = mid + 1;
      }
      return lo;
    }
  };
}

function ascendingComparator(f) {
  return function(d, x) {
    return ascending(f(d), x);
  };
}
*/

import 'ascending.dart';

Map<String, Function> bisector(/*Function | num*/compare) {
  if (compare is num && compare == 1) compare = _ascendingComparator(compare);
  return {
    'left': (Iterable a, x, [lo, hi]) {
      if (lo == null) lo = 0;
      if (hi == null) hi = a.length;
      while (lo < hi) {
        var mid = lo + hi >> 1;
        if (compare(a.elementAt(mid), x) < 0) lo = mid + 1;
        else hi = mid;
      }
      return lo;
    },
    'right': (Iterable a, x, [lo, hi]) {
      if (lo == null) lo = 0;
      if (hi == null) hi = a.length;
      while (lo < hi) {
        var mid = lo + hi >> 1;
        if (compare(a.elementAt(mid), x) > 0) hi = mid;
        else lo = mid + 1;
      }
      return lo;
    }
  };
}

_ascendingComparator(f) => (d, x) => ascending(f(d), x);
