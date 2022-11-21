.class public final synthetic Lr4/uy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/az1;


# direct methods
.method public constructor <init>(Lr4/az1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/uy1;->a:Lr4/az1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lr4/cq2;->a(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
