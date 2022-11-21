.class public interface abstract Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ByteCodeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TypeDependant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/ByteCodeElement$TypeDependant<",
        "*TS;>;S::",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)TS;"
        }
    .end annotation
.end method
