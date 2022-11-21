.class public abstract Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher$Junction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ElementMatcher$Junction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TV;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TU;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/matcher/ElementMatcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;-><init>([Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TV;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TU;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/matcher/ElementMatcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;-><init>([Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method
