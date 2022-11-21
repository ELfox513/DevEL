.class public interface abstract Lnet/bytebuddy/description/method/ParameterList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/FilterableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterList$Empty;,
        Lnet/bytebuddy/description/method/ParameterList$TypeSubstituting;,
        Lnet/bytebuddy/description/method/ParameterList$ForTokens;,
        Lnet/bytebuddy/description/method/ParameterList$Explicit;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;,
        Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/method/ParameterDescription;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "TT;",
        "Lnet/bytebuddy/description/method/ParameterList<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract asDefined()Lnet/bytebuddy/description/method/ParameterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
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
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;
.end method

.method public abstract hasExplicitMetaData()Z
.end method
