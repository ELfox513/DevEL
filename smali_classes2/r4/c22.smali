.class public final synthetic Lr4/c22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/d22;

.field public final b:Lr4/cs0;

.field public final c:Lr4/no2;

.field public final d:Lr4/r01;


# direct methods
.method public constructor <init>(Lr4/d22;Lr4/cs0;Lr4/no2;Lr4/r01;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c22;->a:Lr4/d22;

    iput-object p2, p0, Lr4/c22;->b:Lr4/cs0;

    iput-object p3, p0, Lr4/c22;->c:Lr4/no2;

    iput-object p4, p0, Lr4/c22;->d:Lr4/r01;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lr4/c22;->b:Lr4/cs0;

    iget-object v0, p0, Lr4/c22;->c:Lr4/no2;

    iget-object v1, p0, Lr4/c22;->d:Lr4/r01;

    iget-boolean v0, v0, Lr4/no2;->I:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr4/cs0;->O()V

    :cond_0
    invoke-interface {p1}, Lr4/cs0;->w0()V

    invoke-interface {p1}, Lr4/cs0;->onPause()V

    invoke-virtual {v1}, Lr4/r01;->h()Lr4/a11;

    move-result-object p1

    return-object p1
.end method
