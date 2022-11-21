.class public final synthetic Lr4/ur2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/xr2;

.field public final b:Lr4/or2;

.field public final c:Lr4/uq2;

.field public final d:Lr4/pr2;


# direct methods
.method public constructor <init>(Lr4/xr2;Lr4/or2;Lr4/uq2;Lr4/pr2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ur2;->a:Lr4/xr2;

    iput-object p2, p0, Lr4/ur2;->b:Lr4/or2;

    iput-object p3, p0, Lr4/ur2;->c:Lr4/uq2;

    iput-object p4, p0, Lr4/ur2;->d:Lr4/pr2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 4

    iget-object v0, p0, Lr4/ur2;->a:Lr4/xr2;

    iget-object v1, p0, Lr4/ur2;->b:Lr4/or2;

    iget-object v2, p0, Lr4/ur2;->c:Lr4/uq2;

    iget-object v3, p0, Lr4/ur2;->d:Lr4/pr2;

    check-cast p1, Lr4/dr2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lr4/xr2;->d(Lr4/or2;Lr4/uq2;Lr4/pr2;Lr4/dr2;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
