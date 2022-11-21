.class public final synthetic Lr4/j32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/l32;

.field public final b:Lr4/bp2;

.field public final d:Lr4/no2;


# direct methods
.method public constructor <init>(Lr4/l32;Lr4/bp2;Lr4/no2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j32;->a:Lr4/l32;

    iput-object p2, p0, Lr4/j32;->b:Lr4/bp2;

    iput-object p3, p0, Lr4/j32;->d:Lr4/no2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/j32;->a:Lr4/l32;

    iget-object v1, p0, Lr4/j32;->b:Lr4/bp2;

    iget-object v2, p0, Lr4/j32;->d:Lr4/no2;

    invoke-virtual {v0, v1, v2}, Lr4/l32;->f(Lr4/bp2;Lr4/no2;)V

    return-void
.end method
