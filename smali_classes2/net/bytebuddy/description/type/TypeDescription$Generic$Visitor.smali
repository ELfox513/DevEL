.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForRawType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reifying;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Assigner;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$AnnotationStripper;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$TypeErasing;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$NoOp;
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
.method public abstract onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")TT;"
        }
    .end annotation
.end method
