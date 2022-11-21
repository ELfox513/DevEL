.class public final synthetic Lr4/ms3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gt3;


# instance fields
.field public final a:Lr4/ps3;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr4/ps3;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ms3;->a:Lr4/ps3;

    iput-object p2, p0, Lr4/ms3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lr4/ht3;Lr4/e8;)V
    .locals 2

    iget-object v0, p0, Lr4/ms3;->a:Lr4/ps3;

    iget-object v1, p0, Lr4/ms3;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lr4/ps3;->z(Ljava/lang/Object;Lr4/ht3;Lr4/e8;)V

    return-void
.end method
