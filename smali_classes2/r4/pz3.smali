.class public final Lr4/pz3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/pz3;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lr4/pz3;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lr4/pz3;-><init>(IJJ)V

    sput-object v6, Lr4/pz3;->d:Lr4/pz3;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/pz3;->a:I

    iput-wide p2, p0, Lr4/pz3;->b:J

    iput-wide p4, p0, Lr4/pz3;->c:J

    return-void
.end method

.method public static synthetic a(Lr4/pz3;)I
    .locals 0

    iget p0, p0, Lr4/pz3;->a:I

    return p0
.end method

.method public static synthetic b(Lr4/pz3;)J
    .locals 2

    iget-wide v0, p0, Lr4/pz3;->b:J

    return-wide v0
.end method

.method public static synthetic c(Lr4/pz3;)J
    .locals 2

    iget-wide v0, p0, Lr4/pz3;->c:J

    return-wide v0
.end method

.method public static d(JJ)Lr4/pz3;
    .locals 7

    new-instance v6, Lr4/pz3;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lr4/pz3;-><init>(IJJ)V

    return-object v6
.end method

.method public static e(JJ)Lr4/pz3;
    .locals 7

    new-instance v6, Lr4/pz3;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lr4/pz3;-><init>(IJJ)V

    return-object v6
.end method

.method public static f(J)Lr4/pz3;
    .locals 7

    new-instance v6, Lr4/pz3;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lr4/pz3;-><init>(IJJ)V

    return-object v6
.end method
