.class public interface abstract Lnet/bytebuddy/implementation/bytecode/collection/CollectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation
.end method
