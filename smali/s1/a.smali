.class public final Ls1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a$b;
    }
.end annotation


# instance fields
.field public a:Ls1/a$b;

.field public b:Ls1/a$b;

.field public c:Ls1/a$b;

.field public d:Ls1/a$b;

.field public e:Ls1/a$b;

.field public f:Ls1/a$b;

.field public g:Ls1/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls1/a;->a:Ls1/a$b;

    iput-object v0, p0, Ls1/a;->b:Ls1/a$b;

    iput-object v0, p0, Ls1/a;->c:Ls1/a$b;

    iput-object v0, p0, Ls1/a;->d:Ls1/a$b;

    iput-object v0, p0, Ls1/a;->e:Ls1/a$b;

    iput-object v0, p0, Ls1/a;->f:Ls1/a$b;

    iput-object v0, p0, Ls1/a;->g:Ls1/a$b;

    return-void
.end method


# virtual methods
.method public final a([Lt1/f;Lt1/f;)V
    .locals 2

    sget-object v0, Ls1/a$a;->a:[I

    invoke-virtual {p2}, Lt1/f;->u()I

    move-result v1

    invoke-static {v1}, Ls1/c;->c(I)Ls1/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ls1/a;->g:Ls1/a$b;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ls1/a;->f:Ls1/a$b;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ls1/a;->e:Ls1/a$b;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Ls1/a;->d:Ls1/a$b;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Ls1/a;->c:Ls1/a$b;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Ls1/a;->b:Ls1/a$b;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Ls1/a;->a:Ls1/a$b;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ls1/a$b;->a([Lt1/f;Lt1/f;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->a:Ls1/a$b;

    iput-object p1, p0, Ls1/a;->b:Ls1/a$b;

    iput-object p1, p0, Ls1/a;->c:Ls1/a$b;

    iput-object p1, p0, Ls1/a;->d:Ls1/a$b;

    iput-object p1, p0, Ls1/a;->e:Ls1/a$b;

    iput-object p1, p0, Ls1/a;->f:Ls1/a$b;

    iput-object p1, p0, Ls1/a;->g:Ls1/a$b;

    return-void
.end method

.method public c(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->g:Ls1/a$b;

    return-void
.end method

.method public d(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->d:Ls1/a$b;

    return-void
.end method

.method public e(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->f:Ls1/a$b;

    return-void
.end method

.method public f(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->e:Ls1/a$b;

    return-void
.end method

.method public g(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->b:Ls1/a$b;

    return-void
.end method

.method public h(Ls1/a$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a;->c:Ls1/a$b;

    return-void
.end method

.method public i([Lt1/f;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v2}, Ls1/a;->a([Lt1/f;Lt1/f;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
