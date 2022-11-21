.class public final synthetic Lr4/i62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/j62;

.field public final b:Lr4/bp2;

.field public final d:Lr4/no2;

.field public final k:Lr4/t12;


# direct methods
.method public constructor <init>(Lr4/j62;Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i62;->a:Lr4/j62;

    iput-object p2, p0, Lr4/i62;->b:Lr4/bp2;

    iput-object p3, p0, Lr4/i62;->d:Lr4/no2;

    iput-object p4, p0, Lr4/i62;->k:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/i62;->a:Lr4/j62;

    iget-object v1, p0, Lr4/i62;->b:Lr4/bp2;

    iget-object v2, p0, Lr4/i62;->d:Lr4/no2;

    iget-object v3, p0, Lr4/i62;->k:Lr4/t12;

    iget-object v0, v0, Lr4/j62;->d:Lr4/l62;

    invoke-static {v0, v1, v2, v3}, Lr4/l62;->d(Lr4/l62;Lr4/bp2;Lr4/no2;Lr4/t12;)V

    return-void
.end method
