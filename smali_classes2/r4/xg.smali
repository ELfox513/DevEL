.class public final Lr4/xg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/gh;

.field public final b:Lr4/yf;

.field public c:Lr4/eh;

.field public d:Lr4/ug;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lr4/xf;

.field public i:Lr4/fh;


# direct methods
.method public constructor <init>(Lr4/yf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/gh;

    invoke-direct {v0}, Lr4/gh;-><init>()V

    iput-object v0, p0, Lr4/xg;->a:Lr4/gh;

    iput-object p1, p0, Lr4/xg;->b:Lr4/yf;

    return-void
.end method


# virtual methods
.method public final a(Lr4/eh;Lr4/ug;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/xg;->c:Lr4/eh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/xg;->d:Lr4/ug;

    iget-object p2, p0, Lr4/xg;->b:Lr4/yf;

    iget-object p1, p1, Lr4/eh;->f:Lr4/id;

    invoke-interface {p2, p1}, Lr4/yf;->d(Lr4/id;)V

    invoke-virtual {p0}, Lr4/xg;->b()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lr4/xg;->a:Lr4/gh;

    const/4 v1, 0x0

    iput v1, v0, Lr4/gh;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lr4/gh;->r:J

    iput-boolean v1, v0, Lr4/gh;->l:Z

    iput-boolean v1, v0, Lr4/gh;->q:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lr4/gh;->n:Lr4/fh;

    iput v1, p0, Lr4/xg;->e:I

    iput v1, p0, Lr4/xg;->g:I

    iput v1, p0, Lr4/xg;->f:I

    iput-object v2, p0, Lr4/xg;->h:Lr4/xf;

    iput-object v2, p0, Lr4/xg;->i:Lr4/fh;

    return-void
.end method
