.class public final Lr4/qc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/c93;

.field public final b:Lr4/f93;


# direct methods
.method public constructor <init>(Lr4/c93;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qc3;->a:Lr4/c93;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/qc3;->b:Lr4/f93;

    return-void
.end method

.method public constructor <init>(Lr4/f93;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/qc3;->a:Lr4/c93;

    iput-object p1, p0, Lr4/qc3;->b:Lr4/f93;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 1

    iget-object v0, p0, Lr4/qc3;->a:Lr4/c93;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lr4/c93;->a([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lr4/qc3;->b:Lr4/f93;

    invoke-interface {v0, p1, p2}, Lr4/f93;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method
