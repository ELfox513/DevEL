.class public final synthetic Lr4/uj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ik0;

.field public final b:Lr4/gk0;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/ik0;Lr4/gk0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/uj0;->a:Lr4/ik0;

    iput-object p2, p0, Lr4/uj0;->b:Lr4/gk0;

    iput-object p3, p0, Lr4/uj0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/uj0;->a:Lr4/ik0;

    iget-object v1, p0, Lr4/uj0;->b:Lr4/gk0;

    iget-object v2, p0, Lr4/uj0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lr4/ik0;->x(Lr4/gk0;Ljava/lang/String;)V

    return-void
.end method
