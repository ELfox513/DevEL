.class public final Lr4/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/mj;

.field public final b:Lr4/yj;

.field public final c:Ljava/lang/Object;

.field public final d:[Lr4/pd;


# direct methods
.method public constructor <init>(Lr4/mj;Lr4/yj;Ljava/lang/Object;[Lr4/pd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bk;->a:Lr4/mj;

    iput-object p2, p0, Lr4/bk;->b:Lr4/yj;

    iput-object p3, p0, Lr4/bk;->c:Ljava/lang/Object;

    iput-object p4, p0, Lr4/bk;->d:[Lr4/pd;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bk;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lr4/bk;->b:Lr4/yj;

    invoke-virtual {v1, p2}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v1

    iget-object v2, p1, Lr4/bk;->b:Lr4/yj;

    invoke-virtual {v2, p2}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v2

    invoke-static {v1, v2}, Lr4/ll;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/bk;->d:[Lr4/pd;

    aget-object v1, v1, p2

    iget-object p1, p1, Lr4/bk;->d:[Lr4/pd;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lr4/ll;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
