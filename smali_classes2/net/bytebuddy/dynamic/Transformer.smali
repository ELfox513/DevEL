.class public interface abstract Lnet/bytebuddy/dynamic/Transformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/Transformer$Compound;,
        Lnet/bytebuddy/dynamic/Transformer$ForMethod;,
        Lnet/bytebuddy/dynamic/Transformer$ForField;,
        Lnet/bytebuddy/dynamic/Transformer$NoOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "TT;)TT;"
        }
    .end annotation
.end method
