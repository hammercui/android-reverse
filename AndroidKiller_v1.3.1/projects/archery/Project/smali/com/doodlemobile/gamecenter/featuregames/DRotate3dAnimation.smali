.class Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "DRotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "depthZ"    # F
    .param p6, "reverse"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 17
    iput p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mFromDegrees:F

    .line 18
    iput p2, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mToDegrees:F

    .line 19
    iput p3, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mCenterX:F

    .line 20
    iput p4, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mCenterY:F

    .line 21
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 29
    iget v4, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mFromDegrees:F

    .line 30
    .local v4, "fromDegrees":F
    iget v6, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 32
    .local v3, "degrees":F
    iget v1, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mCenterX:F

    .line 33
    .local v1, "centerX":F
    iget v2, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mCenterY:F

    .line 34
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 36
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 38
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 39
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 40
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 43
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 44
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 45
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 25
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 26
    return-void
.end method
