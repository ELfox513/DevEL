.class public Lg1/a$a;
.super Lg1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a;->b(Ljava/util/UUID;Lx0/i;)Lg1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx0/i;

.field public final synthetic d:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lx0/i;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lg1/a$a;->b:Lx0/i;

    iput-object p2, p0, Lg1/a$a;->d:Ljava/util/UUID;

    invoke-direct {p0}, Lg1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 3

    iget-object v0, p0, Lg1/a$a;->b:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ln0/e;->c()V

    :try_start_0
    iget-object v1, p0, Lg1/a$a;->b:Lx0/i;

    iget-object v2, p0, Lg1/a$a;->d:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lg1/a;->a(Lx0/i;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln0/e;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ln0/e;->g()V

    iget-object v0, p0, Lg1/a$a;->b:Lx0/i;

    invoke-virtual {p0, v0}, Lg1/a;->g(Lx0/i;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ln0/e;->g()V

    throw v1
.end method
