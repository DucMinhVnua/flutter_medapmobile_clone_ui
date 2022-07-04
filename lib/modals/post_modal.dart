import 'package:medapmobile/modals/commen_modal.dart';

class PostModal {
  final CommentModal? parent;
  final List<CommentModal>? childrens;

  PostModal({this.parent, this.childrens});

  @override
  String toString() {
    // TODO: implement toString
    return "{parent: $parent,childrens: $childrens}";
    ;
  }
}