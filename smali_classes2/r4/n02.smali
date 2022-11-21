.class public final Lr4/n02;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/wr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/o61;

.field public final c:Landroid/telephony/TelephonyManager;

.field public final d:Lr4/f02;

.field public final e:Lr4/b02;

.field public final f:Lb3/y1;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lr4/n02;->h:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lr4/wr;->k:Lr4/wr;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lr4/wr;->d:Lr4/wr;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lr4/wr;->p:Lr4/wr;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lr4/wr;->q:Lr4/wr;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lr4/wr;->r:Lr4/wr;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr4/o61;Lr4/f02;Lr4/b02;Lb3/y1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n02;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/n02;->b:Lr4/o61;

    iput-object p3, p0, Lr4/n02;->d:Lr4/f02;

    iput-object p4, p0, Lr4/n02;->e:Lr4/b02;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lr4/n02;->c:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lr4/n02;->f:Lb3/y1;

    return-void
.end method

.method public static synthetic a(Lr4/n02;)Lr4/b02;
    .locals 0

    iget-object p0, p0, Lr4/n02;->e:Lr4/b02;

    return-object p0
.end method

.method public static synthetic b(Lr4/n02;)Lb3/y1;
    .locals 0

    iget-object p0, p0, Lr4/n02;->f:Lb3/y1;

    return-object p0
.end method

.method public static synthetic c(Lr4/n02;Landroid/os/Bundle;)Lr4/nr;
    .locals 4

    invoke-static {}, Lr4/nr;->E()Lr4/fr;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iput v2, p0, Lr4/n02;->g:I

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Lr4/n02;->g:I

    const/4 p0, 0x3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v3}, Lr4/fr;->v(I)Lr4/fr;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lr4/fr;->v(I)Lr4/fr;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lr4/fr;->v(I)Lr4/fr;

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    :goto_1
    :pswitch_2
    invoke-virtual {v0, v2}, Lr4/fr;->x(I)Lr4/fr;

    :goto_2
    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/nr;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d(Lr4/n02;Landroid/os/Bundle;)Lr4/wr;
    .locals 1

    const-string p0, "device"

    invoke-static {p1, p0}, Lr4/up2;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    invoke-static {p0, p1}, Lr4/up2;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lr4/n02;->h:Landroid/util/SparseArray;

    sget-object v0, Lr4/wr;->b:Lr4/wr;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/wr;

    return-object p0
.end method

.method public static synthetic e(Lr4/n02;ZLjava/util/ArrayList;Lr4/nr;Lr4/wr;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lr4/eq;",
            ">;",
            "Lr4/nr;",
            "Lr4/wr;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lr4/sr;->P()Lr4/rr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/rr;->A(Ljava/lang/Iterable;)Lr4/rr;

    iget-object p2, p0, Lr4/n02;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb3/g;->f(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lr4/n02;->g(Z)I

    move-result p2

    invoke-virtual {v0, p2}, Lr4/rr;->J(I)Lr4/rr;

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p2

    iget-object v3, p0, Lr4/n02;->a:Landroid/content/Context;

    iget-object v4, p0, Lr4/n02;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3, v4}, Lb3/g;->p(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I

    move-result p2

    invoke-virtual {v0, p2}, Lr4/rr;->K(I)Lr4/rr;

    iget-object p2, p0, Lr4/n02;->d:Lr4/f02;

    invoke-virtual {p2}, Lr4/f02;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lr4/rr;->x(J)Lr4/rr;

    iget-object p2, p0, Lr4/n02;->d:Lr4/f02;

    invoke-virtual {p2}, Lr4/f02;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lr4/rr;->z(J)Lr4/rr;

    iget-object p2, p0, Lr4/n02;->d:Lr4/f02;

    invoke-virtual {p2}, Lr4/f02;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Lr4/rr;->C(I)Lr4/rr;

    invoke-virtual {v0, p4}, Lr4/rr;->D(Lr4/wr;)Lr4/rr;

    invoke-virtual {v0, p3}, Lr4/rr;->B(Lr4/nr;)Lr4/rr;

    iget p2, p0, Lr4/n02;->g:I

    invoke-virtual {v0, p2}, Lr4/rr;->L(I)Lr4/rr;

    invoke-static {p1}, Lr4/n02;->g(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/rr;->E(I)Lr4/rr;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lr4/rr;->v(J)Lr4/rr;

    iget-object p0, p0, Lr4/n02;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lb3/g;->e(Landroid/content/ContentResolver;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lr4/n02;->g(Z)I

    move-result p0

    invoke-virtual {v0, p0}, Lr4/rr;->I(I)Lr4/rr;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/sr;

    invoke-virtual {p0}, Lr4/uk3;->t()[B

    move-result-object p0

    return-object p0
.end method

.method public static final g(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lr4/n02;->b:Lr4/o61;

    invoke-virtual {v0}, Lr4/o61;->a()Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/m02;

    invoke-direct {v1, p0, p1}, Lr4/m02;-><init>(Lr4/n02;Z)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method
