.class public final Lr4/cq0;
.super Lr4/aa4;
.source "SourceFile"


# static fields
.field public static final c:Lr4/cq0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/cq0;

    invoke-direct {v0}, Lr4/cq0;-><init>()V

    sput-object v0, Lr4/cq0;->c:Lr4/cq0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/aa4;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;[BLjava/lang/String;)Lr4/ea4;
    .locals 0

    const-string p2, "moov"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lr4/ga4;

    invoke-direct {p1}, Lr4/ga4;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lr4/ha4;

    invoke-direct {p1}, Lr4/ha4;-><init>()V

    return-object p1

    :cond_1
    new-instance p2, Lr4/ia4;

    invoke-direct {p2, p1}, Lr4/ia4;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
