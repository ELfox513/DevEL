.class public final synthetic Lr4/rs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ss1;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/ss1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rs1;->a:Lr4/ss1;

    iput-object p2, p0, Lr4/rs1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/rs1;->a:Lr4/ss1;

    iget-object v1, p0, Lr4/rs1;->b:Ljava/lang/String;

    iget-object v0, v0, Lr4/ss1;->d:Lr4/hm0;

    invoke-virtual {v0, v1}, Lr4/hm0;->q(Ljava/lang/String;)V

    return-void
.end method
