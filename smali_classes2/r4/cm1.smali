.class public final synthetic Lr4/cm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/hm1;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/hm1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cm1;->a:Lr4/hm1;

    iput-object p2, p0, Lr4/cm1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/cm1;->a:Lr4/hm1;

    iget-object v1, p0, Lr4/cm1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lr4/hm1;->f(Ljava/lang/String;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
