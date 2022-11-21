.class public final Lr4/j74;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/j74;->a:I

    iput-wide p2, p0, Lr4/j74;->b:J

    return-void
.end method

.method public static a(Lr4/b04;Lr4/xb;)Lr4/j74;
    .locals 3

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object v0

    check-cast p0, Lr4/vz3;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2, v1}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {p1, v1}, Lr4/xb;->p(I)V

    invoke-virtual {p1}, Lr4/xb;->D()I

    move-result p0

    invoke-virtual {p1}, Lr4/xb;->C()J

    move-result-wide v0

    new-instance p1, Lr4/j74;

    invoke-direct {p1, p0, v0, v1}, Lr4/j74;-><init>(IJ)V

    return-object p1
.end method
