.class public final synthetic Lr4/tk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vl1;

.field public final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lr4/vl1;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tk1;->a:Lr4/vl1;

    iput-object p2, p0, Lr4/tk1;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/tk1;->a:Lr4/vl1;

    iget-object v1, p0, Lr4/tk1;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lr4/vl1;->k(Ljava/lang/Exception;)V

    return-void
.end method
