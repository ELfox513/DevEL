.class public abstract Lr4/fo0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lr4/fo0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lr4/fo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static P()I
    .locals 1

    sget-object v0, Lr4/fo0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static Q()I
    .locals 1

    sget-object v0, Lr4/fo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public abstract B()I
.end method

.method public abstract C()J
.end method

.method public abstract D()Z
.end method

.method public abstract E(Z)V
.end method

.method public abstract F(I)V
.end method

.method public abstract G(I)V
.end method

.method public abstract H()J
.end method

.method public abstract I()J
.end method

.method public abstract J()J
.end method

.method public abstract K()J
.end method

.method public abstract L()I
.end method

.method public abstract M(Z)V
.end method

.method public abstract N()J
.end method

.method public abstract O()J
.end method

.method public abstract R([Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract T(Lr4/eo0;)V
.end method

.method public abstract U()V
.end method

.method public abstract V(Landroid/view/Surface;Z)V
.end method

.method public abstract W(FZ)V
.end method

.method public abstract X()V
.end method

.method public abstract Y(J)V
.end method

.method public abstract Z(I)V
.end method

.method public abstract a0(I)V
.end method

.method public abstract b0(I)V
.end method
