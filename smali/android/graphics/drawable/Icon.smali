.class public final synthetic Landroid/graphics/drawable/Icon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static native synthetic createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
.end method

.method public static native synthetic createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
.end method

.method public static native synthetic createWithData([BII)Landroid/graphics/drawable/Icon;
.end method

.method public static native synthetic createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
.end method


# virtual methods
.method public native synthetic setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;
.end method

.method public native synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
