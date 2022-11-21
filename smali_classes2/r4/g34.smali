.class public final Lr4/g34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field public final e:Z

.field public final f:Lr4/xb;

.field public final g:Lr4/xb;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lr4/xb;Lr4/xb;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g34;->g:Lr4/xb;

    iput-object p2, p0, Lr4/g34;->f:Lr4/xb;

    iput-boolean p3, p0, Lr4/g34;->e:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lr4/xb;->p(I)V

    invoke-virtual {p2}, Lr4/xb;->b()I

    move-result p2

    iput p2, p0, Lr4/g34;->a:I

    invoke-virtual {p1, p3}, Lr4/xb;->p(I)V

    invoke-virtual {p1}, Lr4/xb;->b()I

    move-result p2

    iput p2, p0, Lr4/g34;->i:I

    invoke-virtual {p1}, Lr4/xb;->D()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lr4/e04;->a(ZLjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lr4/g34;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget v0, p0, Lr4/g34;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/g34;->b:I

    iget v2, p0, Lr4/g34;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lr4/g34;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/g34;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->d()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/g34;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->B()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lr4/g34;->d:J

    iget v0, p0, Lr4/g34;->b:I

    iget v2, p0, Lr4/g34;->h:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lr4/g34;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->b()I

    move-result v0

    iput v0, p0, Lr4/g34;->c:I

    iget-object v0, p0, Lr4/g34;->g:Lr4/xb;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lr4/xb;->s(I)V

    iget v0, p0, Lr4/g34;->i:I

    const/4 v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lr4/g34;->i:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lr4/g34;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->b()I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iput v2, p0, Lr4/g34;->h:I

    :cond_3
    return v1
.end method
