.class public Ld0/t1$k;
.super Ld0/t1$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final r:Ld0/t1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/t1;->t(Landroid/view/WindowInsets;)Ld0/t1;

    move-result-object v0

    sput-object v0, Ld0/t1$k;->r:Ld0/t1;

    return-void
.end method

.method public constructor <init>(Ld0/t1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$j;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Ld0/t1;Ld0/t1$k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$j;-><init>(Ld0/t1;Ld0/t1$j;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public g(I)Lv/b;
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Ld0/t1$n;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Ld0/g2;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    move-result-object p1

    return-object p1
.end method
