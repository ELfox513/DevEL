.class public interface abstract Lnet/bytebuddy/description/method/MethodList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/FilterableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/MethodList$Empty;,
        Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;,
        Lnet/bytebuddy/description/method/MethodList$ForTokens;,
        Lnet/bytebuddy/description/method/MethodList$Explicit;,
        Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;,
        Lnet/bytebuddy/description/method/MethodList$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "TT;",
        "Lnet/bytebuddy/description/method/MethodList<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract asDefined()Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asSignatureTokenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asSignatureTokenList(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end method
