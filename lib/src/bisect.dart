/*
import {ascending} from "./ascending";
import {bisector}  from "./bisector";

const ascendingBisect = bisector(ascending);
export const bisectRight = ascendingBisect.right;
export const bisectLeft = ascendingBisect.left;
export default bisectRight;
*/

import 'ascending.dart';
import 'bisector.dart';

final ascendingBisect = bisector(ascending);
final bisectRight = ascendingBisect['right'];
final bisectLeft = ascendingBisect['left'];
