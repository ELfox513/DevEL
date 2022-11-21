.class public interface abstract Lnet/bytebuddy/description/field/FieldList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/FilterableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/field/FieldList$Empty;,
        Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;,
        Lnet/bytebuddy/description/field/FieldList$ForTokens;,
        Lnet/bytebuddy/description/field/FieldList$Explicit;,
        Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;,
        Lnet/bytebuddy/description/field/FieldList$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "TT;",
        "Lnet/bytebuddy/description/field/FieldList<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract asDefined()Lnet/bytebuddy/description/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
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
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;"
        }
    .end annotation
.end method
