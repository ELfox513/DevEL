.class public final Ly1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/d;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly1/d;",
        "Ljava/lang/Comparable<",
        "Ly1/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ly1/c;

.field public static final B:Ly1/c;

.field public static final C:Ly1/c;

.field public static final D:Ly1/c;

.field public static final E:Ly1/c;

.field public static final F:Ly1/c;

.field public static final G:Ly1/c;

.field public static final H:Ly1/c;

.field public static final I:Ly1/c;

.field public static final J:Ly1/c;

.field public static final K:Ly1/c;

.field public static final L:Ly1/c;

.field public static final M:Ly1/c;

.field public static final N:Ly1/c;

.field public static final O:Ly1/c;

.field public static final P:Ly1/c;

.field public static final Q:Ly1/c;

.field public static final R:Ly1/c;

.field public static final S:Ly1/c;

.field public static final T:Ly1/c;

.field public static final U:Ly1/c;

.field public static final V:Ly1/c;

.field public static final W:Ly1/c;

.field public static final X:Ly1/c;

.field public static final Y:Ly1/c;

.field public static final Z:Ly1/c;

.field public static final a0:Ly1/c;

.field public static final b0:Ly1/c;

.field public static final c0:Ly1/c;

.field public static final d0:Ly1/c;

.field public static final e0:Ly1/c;

.field public static final f0:Ly1/c;

.field public static final s:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ly1/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Ly1/c;

.field public static final u:Ly1/c;

.field public static final v:Ly1/c;

.field public static final w:Ly1/c;

.field public static final x:Ly1/c;

.field public static final y:Ly1/c;

.field public static final z:Ly1/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final d:I

.field public k:Ljava/lang/String;

.field public p:Ly1/c;

.field public q:Ly1/c;

.field public r:Ly1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Ly1/c;->s:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ly1/c;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->t:Ly1/c;

    new-instance v1, Ly1/c;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly1/c;->u:Ly1/c;

    new-instance v2, Ly1/c;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ly1/c;->v:Ly1/c;

    new-instance v3, Ly1/c;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly1/c;->w:Ly1/c;

    new-instance v4, Ly1/c;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ly1/c;->x:Ly1/c;

    new-instance v5, Ly1/c;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly1/c;->y:Ly1/c;

    new-instance v6, Ly1/c;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ly1/c;->z:Ly1/c;

    new-instance v7, Ly1/c;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ly1/c;->A:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->B:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->C:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "<addr>"

    const/16 v11, 0xa

    invoke-direct {v8, v9, v11}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->D:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/annotation/Annotation;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->E:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/Class;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->F:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/Cloneable;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->G:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/invoke/MethodHandle;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->H:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/invoke/MethodType;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->I:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/invoke/VarHandle;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->J:Ly1/c;

    new-instance v8, Ly1/c;

    const-string v9, "Ljava/lang/Object;"

    invoke-direct {v8, v9, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ly1/c;->K:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/io/Serializable;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->L:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/String;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->M:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Throwable;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->N:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Boolean;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->O:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Byte;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->P:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Character;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->Q:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Double;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->R:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Float;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->S:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Integer;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->T:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Long;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->U:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Short;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->V:Ly1/c;

    new-instance v9, Ly1/c;

    const-string v11, "Ljava/lang/Void;"

    invoke-direct {v9, v11, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->W:Ly1/c;

    new-instance v9, Ly1/c;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly1/c;->X:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->Y:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->Z:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->a0:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->b0:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->c0:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->d0:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->e0:Ly1/c;

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ly1/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/c;->f0:Ly1/c;

    invoke-static {}, Ly1/c;->C()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Ly1/c;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Ly1/c;->a:Ljava/lang/String;

    iput p2, p0, Ly1/c;->b:I

    iput p3, p0, Ly1/c;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Ly1/c;->p:Ly1/c;

    iput-object p1, p0, Ly1/c;->q:Ly1/c;

    iput-object p1, p0, Ly1/c;->r:Ly1/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newAt < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad basicType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static C()V
    .locals 1

    sget-object v0, Ly1/c;->t:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->u:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->v:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->w:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->x:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->y:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->z:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->A:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->E:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->F:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->G:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->H:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->J:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->K:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->L:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->M:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->N:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->O:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->P:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->Q:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->R:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->S:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->T:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->U:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->V:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->W:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->X:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->Y:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->Z:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->a0:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->b0:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->c0:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->d0:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->e0:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    sget-object v0, Ly1/c;->f0:Ly1/c;

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    return-void
.end method

.method public static D(Ljava/lang/String;)Ly1/c;
    .locals 8

    sget-object v0, Ly1/c;->s:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object p0

    invoke-virtual {p0}, Ly1/c;->j()Ly1/c;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x4c

    const-string v5, "bad descriptor: "

    if-ne v0, v4, :cond_6

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_4

    const/16 v7, 0x29

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    if-eq v6, v4, :cond_4

    if-eq v6, v1, :cond_4

    goto :goto_1

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ly1/c;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Ly1/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static E(Ljava/lang/String;)Ly1/c;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Ljava/lang/String;)Ly1/c;
    .locals 1

    :try_start_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ly1/c;->B:Ly1/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    invoke-static {p0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static P(Ly1/c;)Ly1/c;
    .locals 2

    sget-object v0, Ly1/c;->s:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ly1/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/c;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Ly1/c;->s:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Ly1/c;->C()V

    return-void
.end method


# virtual methods
.method public A()Ly1/c;
    .locals 2

    iget v0, p0, Ly1/c;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Ly1/c;->y:Ly1/c;

    return-object v0
.end method

.method public B()Ly1/c;
    .locals 3

    iget-object v0, p0, Ly1/c;->r:Ly1/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H()Z
    .locals 3

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public I()Z
    .locals 1

    invoke-virtual {p0}, Ly1/c;->H()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ly1/c;->C:Ly1/c;

    invoke-virtual {p0, v0}, Ly1/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public J()Z
    .locals 2

    iget v0, p0, Ly1/c;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public K()Z
    .locals 2

    iget v0, p0, Ly1/c;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public L()Z
    .locals 3

    iget v0, p0, Ly1/c;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public M()Z
    .locals 1

    iget v0, p0, Ly1/c;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public N()Z
    .locals 2

    iget v0, p0, Ly1/c;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 1

    iget v0, p0, Ly1/c;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)Ly1/c;
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Ly1/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ly1/c;->O()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ly1/c;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2, p1}, Ly1/c;-><init>(Ljava/lang/String;II)V

    iput-object p0, v1, Ly1/c;->r:Ly1/c;

    invoke-static {v1}, Ly1/c;->P(Ly1/c;)Ly1/c;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already uninitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not a reference type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newAt < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ly1/c;

    invoke-virtual {p0, p1}, Ly1/c;->h(Ly1/c;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ly1/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    check-cast p1, Ly1/c;

    iget-object p1, p1, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ly1/c;->b:I

    return v0
.end method

.method public getType()Ly1/c;
    .locals 0

    return-object p0
.end method

.method public h(Ly1/c;)I
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    iget-object p1, p1, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ly1/c;
    .locals 3

    iget-object v0, p0, Ly1/c;->p:Ly1/c;

    if-nez v0, :cond_0

    new-instance v0, Ly1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ly1/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ly1/c;->P(Ly1/c;)Ly1/c;

    move-result-object v0

    iput-object v0, p0, Ly1/c;->p:Ly1/c;

    :cond_0
    iget-object v0, p0, Ly1/c;->p:Ly1/c;

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 2

    iget v0, p0, Ly1/c;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public p()I
    .locals 3

    iget v0, p0, Ly1/c;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public toHuman()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ly1/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ly1/c;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ly1/c;->x()Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ly1/c;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "short"

    return-object v0

    :pswitch_2
    const-string v0, "long"

    return-object v0

    :pswitch_3
    const-string v0, "int"

    return-object v0

    :pswitch_4
    const-string v0, "float"

    return-object v0

    :pswitch_5
    const-string v0, "double"

    return-object v0

    :pswitch_6
    const-string v0, "char"

    return-object v0

    :pswitch_7
    const-string v0, "byte"

    return-object v0

    :pswitch_8
    const-string v0, "boolean"

    return-object v0

    :pswitch_9
    const-string v0, "void"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ly1/c;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ly1/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    iput-object v0, p0, Ly1/c;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly1/c;->k:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Ly1/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic v()Ly1/d;
    .locals 1

    invoke-virtual {p0}, Ly1/c;->A()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public x()Ly1/c;
    .locals 3

    iget-object v0, p0, Ly1/c;->q:Ly1/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    iput-object v0, p0, Ly1/c;->q:Ly1/c;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly1/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ly1/c;->q:Ly1/c;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly1/c;->a:Ljava/lang/String;

    return-object v0
.end method
