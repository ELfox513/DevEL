.class public Lr4/cr3;
.super Lr4/fr3;
.source "SourceFile"

# interfaces
.implements Lr4/ea4;


# instance fields
.field public t:Lr4/fa4;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lr4/fr3;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lr4/cr3;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cr3;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lr4/fa4;)V
    .locals 0

    iput-object p1, p0, Lr4/cr3;->t:Lr4/fa4;

    return-void
.end method

.method public final e(Lr4/gr3;Ljava/nio/ByteBuffer;JLr4/ba4;)V
    .locals 2

    invoke-interface {p1}, Lr4/gr3;->b()J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    iput-object p1, p0, Lr4/fr3;->b:Lr4/gr3;

    invoke-interface {p1}, Lr4/gr3;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/fr3;->k:J

    invoke-interface {p1}, Lr4/gr3;->b()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lr4/gr3;->x(J)V

    invoke-interface {p1}, Lr4/gr3;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lr4/fr3;->p:J

    iput-object p5, p0, Lr4/fr3;->a:Lr4/ba4;

    return-void
.end method
