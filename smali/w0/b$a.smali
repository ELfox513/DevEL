.class public final Lw0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lw0/k;

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lw0/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw0/b$a;->a:Z

    iput-boolean v0, p0, Lw0/b$a;->b:Z

    sget-object v1, Lw0/k;->a:Lw0/k;

    iput-object v1, p0, Lw0/b$a;->c:Lw0/k;

    iput-boolean v0, p0, Lw0/b$a;->d:Z

    iput-boolean v0, p0, Lw0/b$a;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lw0/b$a;->f:J

    iput-wide v0, p0, Lw0/b$a;->g:J

    new-instance v0, Lw0/c;

    invoke-direct {v0}, Lw0/c;-><init>()V

    iput-object v0, p0, Lw0/b$a;->h:Lw0/c;

    return-void
.end method


# virtual methods
.method public a()Lw0/b;
    .locals 1

    new-instance v0, Lw0/b;

    invoke-direct {v0, p0}, Lw0/b;-><init>(Lw0/b$a;)V

    return-object v0
.end method

.method public b(Lw0/k;)Lw0/b$a;
    .locals 0

    iput-object p1, p0, Lw0/b$a;->c:Lw0/k;

    return-object p0
.end method
