.class public Lnet/bytebuddy/description/field/FieldList$Empty;
.super Lnet/bytebuddy/matcher/FilterableList$Empty;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/field/FieldList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">",
        "Lnet/bytebuddy/matcher/FilterableList$Empty<",
        "TS;",
        "Lnet/bytebuddy/description/field/FieldList<",
        "TS;>;>;",
        "Lnet/bytebuddy/description/field/FieldList<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$Empty;-><init>()V

    return-void
.end method


# virtual methods
.method public asDefined()Lnet/bytebuddy/description/field/FieldList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 1
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

    new-instance p1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-direct {p1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>([Lnet/bytebuddy/description/ByteCodeElement$Token;)V

    return-object p1
.end method
