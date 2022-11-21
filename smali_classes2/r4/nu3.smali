.class public final Lr4/nu3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lr4/dw3;

.field public e:Lr4/nu3;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/nu3;->a:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lr4/nu3;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    iget-wide v0, p0, Lr4/nu3;->a:J

    iget-object v2, p0, Lr4/nu3;->d:Lr4/dw3;

    iget v2, v2, Lr4/dw3;->b:I

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final b()Lr4/nu3;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/nu3;->d:Lr4/dw3;

    iget-object v1, p0, Lr4/nu3;->e:Lr4/nu3;

    iput-object v0, p0, Lr4/nu3;->e:Lr4/nu3;

    return-object v1
.end method
