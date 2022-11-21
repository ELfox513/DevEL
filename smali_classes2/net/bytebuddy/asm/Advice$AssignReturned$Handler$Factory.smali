.class public interface abstract Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory$Simple;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAnnotationType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;ZLnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Z",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "+TT;>;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ">;"
        }
    .end annotation
.end method
