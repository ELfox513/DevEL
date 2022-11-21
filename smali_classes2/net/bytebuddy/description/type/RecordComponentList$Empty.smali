.class public Lnet/bytebuddy/description/type/RecordComponentList$Empty;
.super Lnet/bytebuddy/matcher/FilterableList$Empty;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/RecordComponentList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/type/RecordComponentDescription;",
        ">",
        "Lnet/bytebuddy/matcher/FilterableList$Empty<",
        "TS;",
        "Lnet/bytebuddy/description/type/RecordComponentList<",
        "TS;>;>;",
        "Lnet/bytebuddy/description/type/RecordComponentList<",
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
.method public asDefined()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/RecordComponentList$Empty;-><init>()V

    return-object v0
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
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ">;"
        }
    .end annotation

    new-instance p1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-direct {p1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>([Lnet/bytebuddy/description/ByteCodeElement$Token;)V

    return-object p1
.end method

.method public asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method
