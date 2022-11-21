.class public final synthetic Lr4/qm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/an1;


# direct methods
.method public constructor <init>(Lr4/an1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qm1;->a:Lr4/an1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/qm1;->a:Lr4/an1;

    invoke-virtual {v0, p1}, Lr4/an1;->c(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
