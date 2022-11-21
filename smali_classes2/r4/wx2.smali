.class public final synthetic Lr4/wx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/e;


# instance fields
.field public final a:Lr4/by2;


# direct methods
.method public constructor <init>(Lr4/by2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wx2;->a:Lr4/by2;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lr4/wx2;->a:Lr4/by2;

    invoke-virtual {v0, p1}, Lr4/by2;->d(Ljava/lang/Exception;)V

    return-void
.end method
